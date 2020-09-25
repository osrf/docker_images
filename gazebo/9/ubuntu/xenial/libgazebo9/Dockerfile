# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-xenial
# label gazebo packages
LABEL sha256.libgazebo9-dev=62bbaada3e4f1c4ee30211402f3c4bf2c9bf00b59584b678f44249ebf43fdd95

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

