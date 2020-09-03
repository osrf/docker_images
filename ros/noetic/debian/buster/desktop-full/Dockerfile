# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-buster

# label ros packages
LABEL sha256.ros-noetic-desktop-full=f3d9c0ec2657cf89f6900ca247e28d53cdd57778f349a9fb3a3e8190cbd7e48b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

