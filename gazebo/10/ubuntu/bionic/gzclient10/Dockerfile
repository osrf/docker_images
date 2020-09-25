# This is an auto generated Dockerfile for gazebo:gzclient10
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver10-bionic

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system \
    && rm -rf /var/lib/apt/lists/*

# label gazebo packages
LABEL sha256.gazebo10=c069dd36e141269464acd9b0fb560ce6928aad77b661b4ef811e9b16432467b4

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo10=10.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

