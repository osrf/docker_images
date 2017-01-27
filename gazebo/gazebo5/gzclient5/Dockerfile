# This is an auto generated Dockerfile for gazebo:gzclient5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-27 19:23:04 +0000
FROM gazebo:gzserver5

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5=5.4.0* \
    && rm -rf /var/lib/apt/lists/*
