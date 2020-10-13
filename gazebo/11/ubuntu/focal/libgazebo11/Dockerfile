# This is an auto generated Dockerfile for gazebo:libgazebo11
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver11-focal

# label gazebo packages
LABEL org.osrfoundation.libgazebo11-dev.sha256=f5b5657c6b5e6172a9081d022821a51cf391bb0b40b018eb033f2af8a4d6ff56

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.2.0-1* \
    && rm -rf /var/lib/apt/lists/*

