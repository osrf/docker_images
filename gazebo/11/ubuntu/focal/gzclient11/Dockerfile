# This is an auto generated Dockerfile for gazebo:gzclient11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-focal

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL sha256.gazebo11=63cfdf1692924539ed84a573aa47d98ab699f9a710f8f6144bdeb5dee76fe691

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo11=11.1.0-1* \
    && rm -rf /var/lib/apt/lists/*

