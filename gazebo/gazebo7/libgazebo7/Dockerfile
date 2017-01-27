# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-26 22:23:41 +0000
FROM gazebo:gzserver7
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.5.0* \
    && rm -rf /var/lib/apt/lists/*
