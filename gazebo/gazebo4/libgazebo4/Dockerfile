# This is an auto generated Dockerfile for gazebo:libgazebo4
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-08-14 16:46:52 -0700
FROM gazebo:gzserver4
MAINTAINER Nate Koenig nkoenig@osrfoundation.org
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo4-dev=4.1.3* \
    && rm -rf /var/lib/apt/lists/*
