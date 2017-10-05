#!/usr/bin/env python3

import git
import os
import sys
import yaml

import ros_buildfarm.templates

from docker_templates.argparse import DockerlibraryArgParser
from docker_templates.collections import OrderedLoad
from docker_templates.create import expand_template_prefix_path, create_dockerlibrary
from docker_templates.library import parse_manifest

default_template_prefix_path = ros_buildfarm.templates.template_prefix_path
PWD = os.path.dirname(os.path.abspath(__file__))


def main(argv=sys.argv[1:]):
    """Create Dockerlibrary for images from manafest yaml data"""

    # Create the top-level parser
    parser = DockerlibraryArgParser(
        description="Generate the 'Dockerlibrary for the base docker images")
    parser.set()
    args = parser.parse(argv)

    # Read manifest perams
    with open(args.manifest, 'r') as f:
        manifest = OrderedLoad(f, yaml.SafeLoader)

    # Create a git diff for the current repo
    repo = git.Repo(os.path.join(PWD, '..'))  # , odbt=git.GitCmdObjectDB)

    # Parse the manifest
    repo_name = os.path.basename(PWD)
    manifest = parse_manifest(manifest, repo, repo_name)

    # Flattin manifest data
    data = {**manifest, **manifest['meta']}

    # Create Docker Library
    template_name = data['template_name']
    template_packages = data['template_packages']
    expand_template_prefix_path(template_packages)
    create_dockerlibrary(template_name, data, args.output)


if __name__ == '__main__':
    main()
