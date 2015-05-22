#!/usr/bin/env python3

import os
import pkg_resources
import sys
import yaml

try:
    from cStringIO import StringIO
except ImportError:
    from io import StringIO
from em import Interpreter

from ros_buildfarm.templates import create_dockerfile
from ros_buildfarm.common import get_debian_package_name
from ros_buildfarm.docker_common import DockerfileArgParser
from ros_buildfarm.docker_common import OrderedLoad


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

        # Get debian package names for ros
        ros_packages = []
        for ros_package_name in data['ros_packages']:
            ros_packages.append(
                get_debian_package_name(
                    data['rosdistro_name'], ros_package_name))
        data['ros_packages'] = ros_packages

        # Get path to save Docker file
        dockerfile_dir = os.path.join(output_path, image)
        if not os.path.exists(dockerfile_dir):
            os.makedirs(dockerfile_dir)
        data['dockerfile_dir'] = dockerfile_dir

        # generate Dockerfile
        create_dockerfile(data)

if __name__ == '__main__':
    main()
