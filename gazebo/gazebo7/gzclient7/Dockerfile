# This is an auto generated Dockerfile for gazebo:gzclient7
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-09-26 17:45:00 +0000
FROM gazebo:gzserver7
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
    gazebo7=7.3.1* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
