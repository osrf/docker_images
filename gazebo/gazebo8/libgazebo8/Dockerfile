# This is an auto generated Dockerfile for gazebo:libgazebo8
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-26 20:10:11 +0000
FROM gazebo:gzserver8
MAINTAINER Jose Luis Rivero jrivero@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo8-dev=8.0.0* \
    && rm -rf /var/lib/apt/lists/*
