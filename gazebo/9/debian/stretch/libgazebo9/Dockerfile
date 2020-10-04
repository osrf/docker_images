# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-stretch
# label gazebo packages
LABEL sha256.libgazebo9-dev=4a97e172e4d8749474576bf42e13491eeb050a8c5f96faf9d90a73eed4c61388

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-2* \
    && rm -rf /var/lib/apt/lists/*

