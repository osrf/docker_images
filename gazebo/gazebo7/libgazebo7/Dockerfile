# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver7
# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.8.1-1* \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
