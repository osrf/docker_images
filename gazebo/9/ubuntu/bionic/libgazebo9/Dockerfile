# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-bionic
# label gazebo packages
LABEL sha256.libgazebo9-dev=08f7d1e62f59177e3529d95283701f2d78d4adbec1b3c3b99c0d955ffcc807c4

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-2* \
    && rm -rf /var/lib/apt/lists/*

