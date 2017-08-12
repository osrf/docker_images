#!/usr/bin/env python3

import os
import shutil
import string
import sys
import yaml

from docker_templates.argparse import DockerfolderArgParser
from docker_templates.collections import OrderedLoad
import create_dockerfiles

def interpret_tempate(tempate, data):
    # Read image perams using platform perams
    with open(tempate, 'r') as f:
        value = string.Template(f.read())

    value = value.substitute(data)

    return value

def populate_path(data, path):
    if not os.path.exists(path):
        os.makedirs(path)

    templates = data['templates']

    makefile = interpret_tempate(templates['makefile'], data)
    makefile_path = os.path.join(path, "Makefile")
    with open(makefile_path, 'w') as f:
        f.write(makefile)

    platform = interpret_tempate(templates['platform'], data)
    platform_path = os.path.join(path, "platform.yaml")
    with open(platform_path, 'w') as f:
        f.write(platform)

    shutil.copy(templates['images'], path)

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

    # For each release
    for release_name, release_data in manifest['release_names'].items():
        # For each os supported
        for os_name, os_data in release_data['os_names'].items():
            # For each os distro supported
            for os_code_name, os_code_data in os_data['os_code_names'].items():
                dockerfolder_dir = os.path.join(release_name, os_name, os_code_name)

                os_code_data['release_name'] = release_name
                os_code_data['os_name'] = os_name
                os_code_data['os_code_name'] = os_code_name

                populate_path(data=os_code_data, path=dockerfolder_dir)

                if args.auto:
                    # Run the dockerfile generation script
                    create_dockerfiles.main(('dir', '-d' + dockerfolder_dir))

if __name__ == '__main__':
    main()
