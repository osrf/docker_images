# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-bionic
# label gazebo packages
LABEL sha256.libgazebo11-dev=a6663fdb1cbbb1ef38cb07ca486e6dbf5e0ef29af013794b995d6157f5230a5f

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.1.0-1* \
    && rm -rf /var/lib/apt/lists/*

