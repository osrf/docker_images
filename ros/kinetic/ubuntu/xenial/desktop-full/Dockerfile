# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-desktop-full.sha256=5eb2b54af9275604e3025a57c7a8fedec0790a3a30d849da4a24f7c5212833f0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

