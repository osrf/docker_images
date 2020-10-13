# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-buster

# label ros packages
LABEL org.osrfoundation.ros-noetic-desktop-full.sha256=233d63f921a354284f9f929edcbec45d1fe6b082cb04eebf9f7046907ad493a0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

