# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-focal
# install gazebo packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libgazebo11-dev=11.1.0-1* \
    && rm -rf /var/lib/apt/lists/*
