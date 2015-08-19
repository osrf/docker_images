# This is an auto generated Dockerfile for gazebo:libgazebo6
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-08-19 15:31:14 -0400
FROM gazebo:gzserver6
MAINTAINER Nate Koenig nkoenig@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo6-dev=6.1.0* \
    && rm -rf /var/lib/apt/lists/*
