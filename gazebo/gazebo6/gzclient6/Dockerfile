# This is an auto generated Dockerfile for gazebo:gzclient6
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-09-26 17:54:23 +0000
FROM gazebo:gzserver6
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo6=6.6.0* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
