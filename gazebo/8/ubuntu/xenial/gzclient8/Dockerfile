# This is an auto generated Dockerfile for gazebo:gzclient8
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver8-xenial

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo8=8.6.0-1* \
    && rm -rf /var/lib/apt/lists/*
