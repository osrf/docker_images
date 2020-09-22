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
LABEL sha256.gazebo9=0f34a73d7ba023e45aa86474adf0249b4b8f69146192d4c4594cc68d338b3193

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo9=9.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

