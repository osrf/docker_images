# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver7-xenial

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo7-dev=7.16.1-1* \
    && rm -rf /var/lib/apt/lists/*

