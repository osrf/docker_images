# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-06-08 00:05:01 +0000
FROM gazebo:gzserver7
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.8.0-1* \
    && rm -rf /var/lib/apt/lists/*
