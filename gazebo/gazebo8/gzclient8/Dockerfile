# This is an auto generated Dockerfile for gazebo:gzclient8
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-06-07 21:07:38 +0000
FROM gazebo:gzserver8

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo8=8.1.1-1* \
    && rm -rf /var/lib/apt/lists/*
