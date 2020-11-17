# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-desktop-full.sha256=edf2ce97fcb62aeb5d301020dd8ae77b72541236922ebb0fd54797218791de12

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

