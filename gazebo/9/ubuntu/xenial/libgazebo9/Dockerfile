# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-xenial
# label gazebo packages
LABEL sha256.libgazebo9-dev=0b063ce0ce0fc2e6edc5a7faa6c988a6eb1d418840572cf3d3f75b6f21f5c078

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-3* \
    && rm -rf /var/lib/apt/lists/*

