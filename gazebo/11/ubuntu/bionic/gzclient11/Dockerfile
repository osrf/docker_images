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
LABEL sha256.gazebo11=a6663fdb1cbbb1ef38cb07ca486e6dbf5e0ef29af013794b995d6157f5230a5f

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo11=11.1.0-1* \
    && rm -rf /var/lib/apt/lists/*

