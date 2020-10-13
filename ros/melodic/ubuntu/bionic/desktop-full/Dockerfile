# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-desktop-full.sha256=5ec4f15c054361731225dc201e4579e1beb8c63d0a4b47e15aeb797e6ec38925

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

