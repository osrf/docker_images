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

from docker_templates.create import create_files
from docker_templates.argparse import DockerfileArgParser
from docker_templates.collections import OrderedLoad


def checkVersion(data):
    """Checks current package_version from online package index"""

    # Determine URL
    if data['release']:
        url_pattern = "http://packages.osrfoundation.org/gazebo/$os_name-$release/dists/$os_code_name/main/binary-$arch/Packages"
    else:
        url_pattern = "http://packages.osrfoundation.org/gazebo/$os_name/dists/$os_code_name/main/binary-$arch/Packages"
    urlTemplate = string.Template(url_pattern)
    url = urlTemplate.substitute(data)

    # Download package index
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        package_index = response.read().decode('utf-8')

    # Determine seach pattern
    patternTemplate = string.Template(r'(\bPackage: gazebo$version\n)(.*\n)')
    pattern_raw = patternTemplate.substitute(data)
    pattern = re.compile(pattern_raw)

    # Parse for version_number
    matchs = re.search(pattern, package_index)
    version_line = matchs.groups(0)[1] # Grab the second line of the first match
    version_number = re.search(r'\d(?!Version\:\s)(.+)(?=(~\w+\n))', version_line).group(0) # extract version_number

    # Update the version_number
    data['package_version'] = version_number


def applyVersion(packages, package_version):
    """Return list of versionised package names"""
    package_names = []

    for package in packages:
        package = package + '=' + package_version + '*'
        package_names.append(package)

    return package_names


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

    # Ream image perams using platform perams
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

    # For each image tag
    for image in images:

        # Get data for image
        data = dict(images[image])
        data['tag_name'] = image

        # Add platform perams
        data.update(platform)

        # Check version
        if not data['package_version']:
            checkVersion(data)

        # Apply version
        if ('gazebo_packages' in data) and ('package_version' in data):
            data['gazebo_packages'] = applyVersion(data['gazebo_packages'], data['package_version'])

        # Get path to save Docker file
        dockerfile_dir = os.path.join(output_path, image)
        if not os.path.exists(dockerfile_dir):
            os.makedirs(dockerfile_dir)
        data['dockerfile_dir'] = dockerfile_dir

        # generate Dockerfile
        create_files(data)

if __name__ == '__main__':
    main()
