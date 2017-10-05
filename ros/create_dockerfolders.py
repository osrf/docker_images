#!/usr/bin/env python3

import os
import sys
import yaml

import create_dockerfiles

from docker_templates.argparse import DockerfolderArgParser
from docker_templates.collections import OrderedLoad
from docker_templates.folders import populate_paths


def main(argv=sys.argv[1:]):
    """Create Dockerfolders for images from manafest yaml data"""

    # Create the top-level parser
    parser = DockerfolderArgParser(
        description="Generate the 'Dockerfolders for the base docker images")
    parser.set()
    args = parser.parse(argv)

    # Read manifest perams
    with open(args.manifest, 'r') as f:
        manifest = OrderedLoad(f, yaml.SafeLoader)

    # Populate all paths from the manifest
    populate_paths(manifest, args, create_dockerfiles)


if __name__ == '__main__':
    main()
