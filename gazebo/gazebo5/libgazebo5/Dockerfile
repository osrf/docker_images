# This is an auto generated Dockerfile for gazebo:libgazebo5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2017-01-27 19:23:03 +0000
FROM gazebo:gzserver5
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo5-dev=5.4.0* \
    && rm -rf /var/lib/apt/lists/*
