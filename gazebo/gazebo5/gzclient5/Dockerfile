# This is an auto generated Dockerfile for gazebo:gzclient5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-09-26 17:54:25 +0000
FROM gazebo:gzserver5
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
    gazebo5=5.3.0* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
