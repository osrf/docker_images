# This is an auto generated Dockerfile for gazebo:libgazebo6
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-07-27 15:53:56 -0700
FROM gazebo:gzserver6
MAINTAINER Nate Koenig nkoenig@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo6-dev=6.0.0* \
    && rm -rf /var/lib/apt/lists/*
