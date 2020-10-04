# This is an auto generated Dockerfile for gazebo:gzclient9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-stretch

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL sha256.gazebo9=4a97e172e4d8749474576bf42e13491eeb050a8c5f96faf9d90a73eed4c61388

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo9=9.15.0-2* \
    && rm -rf /var/lib/apt/lists/*

