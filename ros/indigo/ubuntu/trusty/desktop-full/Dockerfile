# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:indigo-desktop-trusty

# label ros packages
LABEL sha256.ros-indigo-desktop-full=2a203c632754b827e09f877cbaf8029d91cda3a19cc45120fa25ee0b6ca6e3ce

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-desktop-full=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

