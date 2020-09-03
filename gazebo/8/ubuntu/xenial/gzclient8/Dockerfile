# This is an auto generated Dockerfile for gazebo:gzclient8
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver8-xenial

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL sha256.gazebo8=384615f388d778e44711788c8f7b73bad347d6ebbd48ab31c070ea193170e457

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo8=8.6.0-1* \
    && rm -rf /var/lib/apt/lists/*

