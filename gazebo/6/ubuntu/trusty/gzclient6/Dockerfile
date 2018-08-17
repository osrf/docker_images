# This is an auto generated Dockerfile for gazebo:gzclient6
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver6-trusty

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo6=6.7.0-1* \
    && rm -rf /var/lib/apt/lists/*
