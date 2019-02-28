#!/usr/bin/env python3

import hashlib
import os
import re
import requests
import sys


def get_sha256_sum(url):
    hasher = hashlib.sha256()
    text = requests.get(url).text
    # Convert unicode object to bytes using sytem encoding
    encoded_text = text.encode(sys.stdin.encoding)
    # hash it
    hasher.update(encoded_text)
    return hasher.digest().hex()


if __name__ == '__main__':

    urls = [
        "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/xenial/InRelease",
        "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/bionic/InRelease",
        "http://packages.ros.org/ros/ubuntu/dists/trusty/InRelease",
        "http://packages.ros.org/ros/ubuntu/dists/xenial/InRelease",
        "http://packages.ros.org/ros/ubuntu/dists/bionic/InRelease",
        "http://packages.ros.org/ros/ubuntu/dists/stretch/InRelease",
        "http://repo.ros2.org/ubuntu/main/dists/xenial/InRelease",
        "http://repo.ros2.org/ubuntu/main/dists/bionic/InRelease",
    ]

    url_hashes = {}
    for url in urls:
        hash_output = get_sha256_sum(url)
        url_hashes[url] = hash_output
        print(url)
        print("\t" + hash_output)

    paths = {
        "gazebo/7/ubuntu/xenial/gzserver7/Dockerfile":
            "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/xenial/InRelease",
        "gazebo/8/ubuntu/xenial/gzserver8/Dockerfile":
            "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/xenial/InRelease",
        "gazebo/9/ubuntu/bionic/gzserver9/Dockerfile":
            "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/bionic/InRelease",
        "gazebo/9/ubuntu/xenial/gzserver9/Dockerfile":
            "http://packages.osrfoundation.org/gazebo/ubuntu-stable/dists/xenial/InRelease",
        "ros/indigo/ubuntu/trusty/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/trusty/InRelease",
        "ros/kinetic/ubuntu/xenial/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/xenial/InRelease",
        "ros/lunar/debian/stretch/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/stretch/InRelease",
        "ros/lunar/ubuntu/xenial/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/xenial/InRelease",
        "ros/melodic/debian/stretch/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/stretch/InRelease",
        "ros/melodic/ubuntu/bionic/ros-core/Dockerfile":
            "http://packages.ros.org/ros/ubuntu/dists/bionic/InRelease",
        "ros/ardent/ubuntu/xenial/ros-core/Dockerfile":
            "http://repo.ros2.org/ubuntu/main/dists/xenial/InRelease",
        "ros/bouncy/ubuntu/bionic/ros-core/Dockerfile":
            "http://repo.ros2.org/ubuntu/main/dists/bionic/InRelease",
    }

    for path, url in paths.items():
        path = os.path.join(os.path.dirname(os.path.abspath(__file__)), path)
        if not os.path.isfile(path):
            raise RuntimeError("{} does not exist".format(path))

        with open(path, 'r') as file_in:
            content = file_in.read()

        sum_regex = r'SUM=[a-f0-9]+'
        new_sum = 'SUM=' + url_hashes[url]
        new_content = re.sub(sum_regex, new_sum, content)

        with open(path, 'w') as file_out:
            file_out.write(new_content)
