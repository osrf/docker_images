#!/usr/bin/env python3

import os
import shutil
import string
import sys
import yaml

from docker_templates.argparse import DockerfolderArgParser
from docker_templates.collections import OrderedLoad
import create_dockerfiles

class AltTemplate(string.Template):
    delimiter = '@'
    idpattern = r'[a-z][_a-z0-9]*'

def interpret_tempate(tempate, data, tempate_class=string.Template):
    # Read image perams using platform perams
    with open(tempate, 'r') as f:
        value = tempate_class(f.read())

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

def populate_hooks(data, path):
    if not os.path.exists(path):
        os.makedirs(path)
    for hook_name, hook_tempate in data['hook_names'].items():
        tags = ' '.join([data['release_name'] + '-' + data['tag_name']])
        hookfile = interpret_tempate(hook_tempate, {'tags':tags,'release_name':data['release_name']}, AltTemplate)
        hookfile_path = os.path.join(path, hook_name)
        with open(hookfile_path, 'w') as f:
            f.write(hookfile)
        os.chmod(hookfile_path, 0o744)

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

    # Hacks to add hook scripts for osrf/ros
    if 'hacks' in manifest:
        # For each release
        for release_name, release_data in manifest['hacks'].items():
            # For each os supported
            for os_name, os_data in release_data['os_names'].items():
                # For each os distro supported
                for os_code_name, os_code_data in os_data['os_code_names'].items():
                    # For each tag supported:
                    for tag_name, tag_data in os_code_data['tag_names'].items():
                        hooksfolder_dir = os.path.join(release_name, os_name, os_code_name, tag_name, 'hooks')
                        tag_data['release_name'] = release_name
                        tag_data['os_name'] = os_name
                        tag_data['os_code_name'] = os_code_name
                        tag_data['tag_name'] = tag_name
                        populate_hooks(tag_data, hooksfolder_dir)

if __name__ == '__main__':
    main()
