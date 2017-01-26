# This is an auto generated Dockerfile for gazebo:gzclient8
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-26 20:31:00 +0000
FROM gazebo:gzserver8
MAINTAINER Jose Luis Rivero jrivero@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    lsb-release \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo8=8.0.0* \
    && rm -rf /var/lib/apt/lists/*
