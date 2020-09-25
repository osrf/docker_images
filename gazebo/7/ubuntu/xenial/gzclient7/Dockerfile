# This is an auto generated Dockerfile for gazebo:gzclient7
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver7-xenial

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL sha256.gazebo7=b1aee9ca46363b8b8ae56503af3876466ced9d86b166b69af633204e74317024

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo7=7.16.1-1* \
    && rm -rf /var/lib/apt/lists/*

