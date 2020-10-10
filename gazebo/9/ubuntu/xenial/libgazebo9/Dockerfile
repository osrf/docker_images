# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-xenial
# label gazebo packages
LABEL sha256.libgazebo9-dev=d741cb46a5682a9500c12798fac2b3405d67bd09d99bc56b75b7b852c616c707

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-3* \
    && rm -rf /var/lib/apt/lists/*

