#!/usr/bin/env python3

import os
import sys
import yaml

try:
    from cStringIO import StringIO
except ImportError:
    from io import StringIO
from em import Interpreter

from docker_templates.argparse import DockerfileArgParser
from docker_templates.create import create_files
from docker_templates.collections import OrderedLoad
from docker_templates.packages import expandPackages

def main(argv=sys.argv[1:]):
    """Create Dockerfiles for images from platform and image yaml data"""

    # Create the top-level parser
    parser = DockerfileArgParser(
        description="Generate the 'Dockerfile's for the base docker images")
    parser.set()
    args = parser.parse(argv)

    # Read platform perams
    with open(args.platform, 'r') as f:
        # use safe_load instead load
        platform = yaml.safe_load(f)['platform']

    # Read image perams using platform perams
    images_yaml = StringIO()
    try:
        interpreter = Interpreter(output=images_yaml)
        interpreter.file(open(args.images, 'r'), locals=platform)
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

        # Apply package distro/version formatting
        expandPackages(data)

        # Get path to save Docker file
        dockerfile_dir = os.path.join(args.output, image)
        if not os.path.exists(dockerfile_dir):
            os.makedirs(dockerfile_dir)
        data['dockerfile_dir'] = dockerfile_dir

        # generate Dockerfile
        create_files(data)

if __name__ == '__main__':
    main()
