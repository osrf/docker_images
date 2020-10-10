# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-bionic
# label gazebo packages
LABEL sha256.libgazebo9-dev=63c6d297c3a56d514af2db0fe2a64624e1db4cda92d6e93f6009ac933df635e9

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-2* \
    && rm -rf /var/lib/apt/lists/*

