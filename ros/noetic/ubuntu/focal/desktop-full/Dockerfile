# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-focal

# label ros packages
LABEL sha256.ros-noetic-desktop-full=3f01090798b8baa573d2c7c795c1ceb8a774e920811123bbbdac9a32fe653631

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

