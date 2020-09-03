# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-focal

# label ros packages
LABEL sha256.ros-noetic-desktop-full=d64573a06818583dac7d5335bce65b2db4677591ef13746f41c73a3e942d81b0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

