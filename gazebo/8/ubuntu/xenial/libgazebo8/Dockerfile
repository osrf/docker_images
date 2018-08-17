# This is an auto generated Dockerfile for gazebo:libgazebo8
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver8-xenial
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo8-dev=8.6.0-1* \
    && rm -rf /var/lib/apt/lists/*
