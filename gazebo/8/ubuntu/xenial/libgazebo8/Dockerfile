# This is an auto generated Dockerfile for gazebo:libgazebo8
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver8-xenial
# label gazebo packages
LABEL sha256.libgazebo8-dev=384615f388d778e44711788c8f7b73bad347d6ebbd48ab31c070ea193170e457

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo8-dev=8.6.0-1* \
    && rm -rf /var/lib/apt/lists/*

