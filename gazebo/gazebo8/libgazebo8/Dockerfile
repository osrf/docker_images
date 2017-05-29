# This is an auto generated Dockerfile for gazebo:libgazebo8
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-05-29 06:20:33 +0000
FROM gazebo:gzserver8
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo8-dev=8.1.0-1* \
    && rm -rf /var/lib/apt/lists/*
