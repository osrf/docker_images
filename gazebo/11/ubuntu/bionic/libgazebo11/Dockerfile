# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-bionic
# label gazebo packages
LABEL sha256.libgazebo11-dev=873aa8aaf39fbb6347c36cd0962227f96f066cfeef6c98b9f638c7f9a381a8c1

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

