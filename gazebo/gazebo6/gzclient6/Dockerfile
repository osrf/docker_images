# This is an auto generated Dockerfile for gazebo:gzclient6
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-07-27 15:53:56 -0700
FROM gazebo:gzserver6
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo6=6.0.0* \
    && rm -rf /var/lib/apt/lists/*
