# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver7-xenial
# label gazebo packages
LABEL sha256.libgazebo7-dev=b1aee9ca46363b8b8ae56503af3876466ced9d86b166b69af633204e74317024

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo7-dev=7.16.1-1* \
    && rm -rf /var/lib/apt/lists/*

