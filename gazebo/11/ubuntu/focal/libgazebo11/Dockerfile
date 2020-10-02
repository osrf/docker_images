# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-focal
# label gazebo packages
LABEL sha256.libgazebo11-dev=c5d0823f4dd80b7c54a91dda74c1ab34a5dccaacc25401156bc1ba7d37531f09

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

