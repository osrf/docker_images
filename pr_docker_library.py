#!/usr/bin/env python3

import datetime
import difflib
import git  # gitpython
import github
import os
import shutil
import tempfile


# Path to root of this repo
BASE_PATH = os.path.dirname(os.path.abspath(__file__))
# Path to official docker library repo
DOCKER_LIBRARY_REPO_URL = 'git@github.com:docker-library/official-images.git'
DOCKER_LIBRARY_REPO = 'docker-library/official-images'
# Path to fork to update with docker images
FORK_LIBRARY_REPO_URL = 'git@github.com:ros-infrastructure/official-images.git'
FORK_LIBRARY_REPO_USER = 'ros-infrastructure'

# Token to use to interact with github
GIT_USER = os.environ.get('GITHUB_USER','')
GIT_EMAIL = os.environ.get('GITHUB_EMAIL','')
GIT_TOKEN = os.environ.get('GITHUB_TOKEN','')
GIT_AUTHOR = "{user} <{email}>".format(user=GIT_USER, email=GIT_EMAIL)
GIT_TOKEN = os.environ.get('GITHUB_TOKEN','')


PR_TEMPLATE = """
# Update library definition for '{name}'

<details><summary>Diff</summary>

```diff
{diff}
```
</details>
"""


def read_local_library_definition(name):
    # Library definition file for `ros` is in `ros/ros`
    with open(os.path.join(BASE_PATH, name, name), 'r') as fin:
        return fin.read()


def read_upstream_library_definition(name):
    # Get the manifest from the upstream repo 
    with tempfile.TemporaryDirectory(prefix='osrf-docker-images') as temp_dir:
        git.Repo.clone_from(DOCKER_LIBRARY_REPO_URL, temp_dir, depth=1) 
        with open(os.path.join(temp_dir, 'library', name)) as fin:
            return fin.read()


def pr_with_sentinel_exists(sentinel):
    gh_handle = github.Github(GIT_TOKEN)
    repo = gh_handle.get_repo(DOCKER_LIBRARY_REPO)
    for pr in repo.get_pulls(state='open'):
        if sentinel in pr.body:
            return True
    return False


def diff_library_definitions(local_ldf, upstream_ldf):
    differ = difflib.Differ()
    diff = differ.compare(
        upstream_ldf.splitlines(keepends=True),
        local_ldf.splitlines(keepends=True))
    diff = ''.join(diff)
    return diff


def update_library_definition_fork(name):
    # Create branch on fork that is up to date with upstream
    # write changed manifest to fork
    # commit to new branch
    # push branch to fork
    branch_name = None
    with tempfile.TemporaryDirectory(prefix='osrf-docker-images') as temp_dir:
        # Clone fork repo locally with a remote for the official one
        repo = git.Repo.clone_from(FORK_LIBRARY_REPO_URL, temp_dir, depth=1) 
        remote = repo.create_remote('upstream', DOCKER_LIBRARY_REPO_URL)
        if not remote.exists():
            raise RuntimeError('Failed to find official docker library')
        remote.fetch()

        # Create branch on fork repo tracking official docker library
        d = datetime.datetime.utcnow()
        d_str = d.strftime(r'%Y-%m-%d_%H-%M-%S')
        branch_name = '{}/{}'.format(name, d_str)
        head = repo.create_head(branch_name, remote.refs.master)
        head.checkout()

        # Update the library definition file on the fork
        shutil.copy(
            os.path.join(BASE_PATH, name, name),
            os.path.join(temp_dir, 'library', name))

        repo.git.add(all=True)
        message = 'Update library definition for ' + name
        repo.git.commit(message=message, author=GIT_AUTHOR)
        repo.remotes.origin.push(branch_name, set_upstream=True)

    print('created branch', branch_name)

    return branch_name


def create_upstream_pull_request(name, diff, branch_name):
    # open pull request with template
    gh_handle = github.Github(GIT_TOKEN)
    repo = gh_handle.get_repo(DOCKER_LIBRARY_REPO)
    pr = repo.create_pull(
        title='Update ' + name,
        head='{}:{}'.format(FORK_LIBRARY_REPO_USER, branch_name),
        base='master',
        body=PR_TEMPLATE.format(name=name, diff=diff))
    print('Created PR', pr.url)


def update_upstream_library_definition(name):
    local_ldf = read_local_library_definition(name)
    upstream_ldf = read_upstream_library_definition(name)

    if local_ldf == upstream_ldf:
        print('Upstream LDF and local LDF for {} are in sync'.format(name))
        return

    diff = diff_library_definitions(local_ldf, upstream_ldf)
    print('--- Diff for {}---'.format(name)) 
    print(diff)
    print('--- End diff ---')

    if pr_with_sentinel_exists(diff):
        print('Upstream PR alredy created, ignoring')
        return

    fork_branch = update_library_definition_fork(name)

    # Create pull request
    create_upstream_pull_request(name, diff, fork_branch)


if __name__ == '__main__':

    update_upstream_library_definition(os.environ['HUB_REPO'])
