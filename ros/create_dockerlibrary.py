#!/usr/bin/env python3

import git
import os
import pkg_resources
import shutil
import string
import sys
import urllib.parse
import yaml

PWD = os.path.dirname(os.path.abspath(__file__))
sub_repo = 'ros'

from docker_templates.argparse import DockerlibraryArgParser
from docker_templates.collections import OrderedLoad
from docker_templates.create import expand_template_prefix_path

import ros_buildfarm.templates
from ros_buildfarm.templates import expand_template, get_wrapper_scripts

default_template_prefix_path = ros_buildfarm.templates.template_prefix_path

def create_dockerlibrary(template_name, data, dockerlibrary_path, verbose=False):
    data['template_name'] = template_name
    data['wrapper_scripts'] = get_wrapper_scripts()
    content = expand_template(template_name, data)
    if verbose:
        for line in content.splitlines():
            print(' ', line)
    with open(dockerlibrary_path, 'w') as h:
        h.write(content)

def latest_commit_sha(repo, path):
    log_message = repo.git.log("-1",path)
    commit_sha = log_message.split('\n')[0].split(' ')[1]
    return commit_sha

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
    repo = git.Repo(os.path.join(PWD,'..')) #, odbt=git.GitCmdObjectDB)

    # For each release
    for release_name, release_data in list(manifest['release_names'].items()):
        print('release_name: ', release_name)
        # For each os supported
        for os_name, os_data in list(release_data['os_names'].items()):
            print('os_name: ', os_name)
            # For each os code name supported
            for os_code_name, os_code_data in list(os_data['os_code_names'].items()):
                print('os_code_name: ', os_code_name)
                commit_path = os.path.join(sub_repo, release_name, os_name, os_code_name)
                commit_sha = latest_commit_sha(repo, commit_path)
                if os_code_data['tag_names']:
                    for tag_name, tag_data in os_code_data['tag_names'].items():
                        print('tag_name: ', tag_name)
                        tags = []
                        for alias_pattern in tag_data['aliases']:
                            alias_template = string.Template(alias_pattern)
                            alias = alias_template.substitute(
                                release_name=release_name,
                                os_name=os_name,
                                os_code_name=os_code_name)
                            tags.append(alias)
                        print('tags: ', tags)
                        tag_data['Tags'] = tags
                        tag_data['Architectures'] = os_code_data['archs']
                        tag_data['GitCommit'] = commit_sha
                        tag_data['Directory'] = os.path.join(commit_path, tag_name)
                else:
                    del manifest['release_names'][release_name]

    data = {**manifest, **manifest['meta']}
    script_path = os.path.join(sub_repo, __file__)
    scripts_sha = latest_commit_sha(repo, commit_path)
    data['script_url'] = urllib.parse.urljoin(data['repo_url'][0:-4]+'/blob/',os.path.join(scripts_sha,script_path))

    template_name = data['template_name']
    template_packages = data['template_packages']
    expand_template_prefix_path(template_packages)
    create_dockerlibrary(template_name, data, args.output)


if __name__ == '__main__':
    main()
