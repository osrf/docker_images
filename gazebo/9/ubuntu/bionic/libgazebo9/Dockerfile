# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-bionic
# label gazebo packages
LABEL sha256.libgazebo9-dev=9df95001fb3d160f0a70ee743c833c889d8bfb1ec6963716e7ebf8bc0c51b5c8

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

