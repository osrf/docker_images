# This is an auto generated Dockerfile for gazebo:libgazebo4
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-04-26 23:19:42 +0000
FROM gazebo:gzserver4
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo4-dev=4.1.3* \
    && rm -rf /var/lib/apt/lists/*
