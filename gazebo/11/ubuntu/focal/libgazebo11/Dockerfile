# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-focal
# label gazebo packages
LABEL sha256.libgazebo11-dev=63cfdf1692924539ed84a573aa47d98ab699f9a710f8f6144bdeb5dee76fe691

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.1.0-1* \
    && rm -rf /var/lib/apt/lists/*

