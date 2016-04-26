FROM python:3
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

WORKDIR /tmp/

RUN pip3 install \
        empy \
        rosdistro && \
    git clone \
        -b docker_images \
        https://github.com/ruffsl/ros_buildfarm.git && \
    git clone \
        -b master \
        https://github.com/osrf/docker_images.git && \
    git clone \
        -b master \
        https://github.com/osrf/docker_templates.git

ENV PYTHONPATH=/tmp/ros_buildfarm:/tmp/docker_images:/tmp/docker_templates:

WORKDIR /tmp/docker_images
