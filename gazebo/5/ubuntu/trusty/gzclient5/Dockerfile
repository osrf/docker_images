# This is an auto generated Dockerfile for gazebo:gzclient5
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver5-trusty

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5=5.4.0-1* \
    && rm -rf /var/lib/apt/lists/*
