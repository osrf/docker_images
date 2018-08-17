# This is an auto generated Dockerfile for gazebo:libgazebo6
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver6-trusty
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo6-dev=6.7.0-1* \
    && rm -rf /var/lib/apt/lists/*
