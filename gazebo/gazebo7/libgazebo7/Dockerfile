# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-04-26 23:20:22 +0000
FROM gazebo:gzserver7
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.0.0* \
    && rm -rf /var/lib/apt/lists/*
