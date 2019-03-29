# This is an auto generated Dockerfile for gazebo:libgazebo10
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver10-bionic
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo10-dev=10.1.0-1* \
    && rm -rf /var/lib/apt/lists/*
