# This is an auto generated Dockerfile for gazebo:libgazebo10
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver10-bionic

# label gazebo packages
LABEL org.osrfoundation.libgazebo10-dev.sha256=567f732b33e60a7dff09b02c0622d7d633ef1462086c3eca71fc131ac68a6e71

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo10-dev=10.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

