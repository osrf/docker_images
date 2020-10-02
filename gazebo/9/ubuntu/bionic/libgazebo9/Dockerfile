# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-bionic
# label gazebo packages
LABEL sha256.libgazebo9-dev=39ba4019637689b6b95dde813826ddc8d1bb252f137ab86489054c41cf4decf1

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-1* \
    && rm -rf /var/lib/apt/lists/*

