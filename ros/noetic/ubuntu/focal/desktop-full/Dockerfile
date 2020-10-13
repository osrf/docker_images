# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-focal

# label ros packages
LABEL org.osrfoundation.ros-noetic-desktop-full.sha256=d910a1329b75d641425884c16698e7df8be3291135c2e7e58f60920bcbc2cd58

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

