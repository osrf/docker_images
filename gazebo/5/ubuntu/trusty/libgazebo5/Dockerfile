# This is an auto generated Dockerfile for gazebo:libgazebo5
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver5-trusty
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo5-dev=5.4.0-1* \
    && rm -rf /var/lib/apt/lists/*
