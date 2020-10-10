# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-stretch
# label gazebo packages
LABEL sha256.libgazebo9-dev=ac16ce9a49f099653c348b18cfeac98470883b559761082ff88d7014a7e07693

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-2* \
    && rm -rf /var/lib/apt/lists/*

