# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-stretch
# label gazebo packages
LABEL sha256.libgazebo9-dev=0f34a73d7ba023e45aa86474adf0249b4b8f69146192d4c4594cc68d338b3193

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

