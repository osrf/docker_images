# This is an auto generated Dockerfile for gazebo:libgazebo5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2016-04-27 20:25:00 +0000
FROM gazebo:gzserver5
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo5-dev=5.3.0* \
    && rm -rf /var/lib/apt/lists/*
