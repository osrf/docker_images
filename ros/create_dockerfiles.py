#!/usr/bin/env python3

import os
import re
import string
import sys
import urllib.request
import yaml

try:
    from cStringIO import StringIO
except ImportError:
    from io import StringIO
from em import Interpreter

# import ros_buildfarm.templates
from ros_buildfarm.templates import create_dockerfile
from docker_templates.argparse import DockerfileArgParser
from docker_templates.collections import OrderedLoad

# import docker_templates
# template_prefix_path = os.path.join(
#     os.path.dirname(docker_templates.__file__), 'templates')
# ros_buildfarm.templates.template_prefix_path.insert(0, template_prefix_path)

url_pattern = "http://packages.ros.org/$release/$os_name/dists/$os_code_name/main/binary-$arch/Packages"

def getPackageIndex(data, url_pattern):
    """Fetches current online package index"""

    # Determine URL
    urlTemplate = string.Template(url_pattern)
    url = urlTemplate.substitute(data)

    # Download package index
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        package_index = response.read().decode('utf-8')

    return package_index

def getPackageVersions(packages, package_index, data):
    """Use package index to get package versions"""
    package_versions = []

    for i, package in enumerate(packages):

        # Determine seach pattern
        patternTemplate = string.Template(r'(\bPackage: ros-$rosdistro_name-$package\n)(.*\n)')
        pattern_raw = patternTemplate.substitute(data,package=package)
        pattern = re.compile(pattern_raw)

        # Parse for version_number
        matchs = re.search(pattern, package_index)

        version_line = matchs.groups(0)[1] # Grab the second line of the first match
        version_number = re.search(r'\d(?!Version\:\s)(.+-\d*)(?=(.+-.+-.+-.+\n))', version_line).group(0) # extract version_number

        package_version = 'ros-'+ data['rosdistro_name'] + '-' + package + '=' + version_number + '*'
        package_versions.append(package_version)

    return package_versions

def avoidPackageVersions(packages, data):
    """Don't overide any package versions"""
    package_versions = []

    for i, package in enumerate(packages):
        package_version = 'ros-'+ data['rosdistro_name'] + '-' + package
        package_versions.append(package_version)

    return package_versions

def main(argv=sys.argv[1:]):
    """Create Dockerfiles for images from platform and image yaml data"""

    # Create the top-level parser
    parser = DockerfileArgParser(
        description="Generate the 'Dockerfile's for the base docker images")
    parser.set()
    args = parser.parse_args(argv)

    # If paths were given explicitly
    if args.subparser_name == 'explicit':
        platform_path = args.platform
        images_path = args.images
        output_path = args.output

    # Else just use the given directory path
    elif args.subparser_name == 'dir':
        platform_path = 'platform.yaml'
        images_path = 'images.yaml.em'
        platform_path = os.path.join(args.directory, platform_path)
        images_path = os.path.join(args.directory, images_path)
        output_path = args.directory

    # Read platform perams
    with open(platform_path, 'r') as f:
        # use safe_load instead load
        platform = yaml.safe_load(f)['platform']

    # Read image perams using platform perams
    images_yaml = StringIO()
    try:
        interpreter = Interpreter(output=images_yaml)
        interpreter.file(open(images_path, 'r'), locals=platform)
        images_yaml = images_yaml.getvalue()
    except Exception as e:
        print("Error processing %s" % images_path)
        raise
    finally:
        interpreter.shutdown()
        interpreter = None
    # Use ordered dict
    images = OrderedLoad(images_yaml, yaml.SafeLoader)['images']

    # Check index if no version given
    if platform['version'] is None:
        package_index = getPackageIndex(platform, url_pattern)

    # For each image tag
    for image in images:

        # Get data for image
        data = dict(images[image])
        data['tag_name'] = image

        # Add platform perams
        data.update(platform)

        # Apply package distro/version formatting
        if 'ros_packages' in data:
            if data['version'] is None:
                data['ros_packages'] = getPackageVersions(data['ros_packages'], package_index, data)
            else:
                data['ros_packages'] = avoidPackageVersions(data['ros_packages'], data)

        # Get path to save Docker file
        dockerfile_dir = os.path.join(output_path, image)
        if not os.path.exists(dockerfile_dir):
            os.makedirs(dockerfile_dir)
        data['dockerfile_dir'] = dockerfile_dir

        # generate Dockerfile
        create_dockerfile(data['template_name'], data, data['dockerfile_dir'], verbose=False)

if __name__ == '__main__':
    main()
