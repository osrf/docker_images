# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-27 02:26:09 +0000
FROM gazebo:gzserver7
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.5.0* \
    && rm -rf /var/lib/apt/lists/*
