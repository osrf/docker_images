# This is an auto generated Dockerfile for gazebo:libgazebo10
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver10-bionic
# label gazebo packages
LABEL sha256.libgazebo10-dev=c069dd36e141269464acd9b0fb560ce6928aad77b661b4ef811e9b16432467b4

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo10-dev=10.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

