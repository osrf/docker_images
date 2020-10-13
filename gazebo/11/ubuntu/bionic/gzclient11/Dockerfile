# This is an auto generated Dockerfile for gazebo:gzclient11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-bionic

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL org.osrfoundation.gazebo11.sha256=873aa8aaf39fbb6347c36cd0962227f96f066cfeef6c98b9f638c7f9a381a8c1

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo11=11.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

