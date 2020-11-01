# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-robot-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-desktop.sha256=cc1dc2c2f11bfec3a205e1177d707639fc1d3833c3ed9e9bc6b0944b152aabdb

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

