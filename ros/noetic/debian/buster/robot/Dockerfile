# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-buster

# label ros packages
LABEL org.osrfoundation.ros-noetic-robot.sha256=87f2a3b36f798fc6ed79636c0f91414e2e5eb79594c0b4c1c2d9b9e66b8bd8d2

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

