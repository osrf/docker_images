# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-bionic

# label ros packages
LABEL sha256.ros-melodic-desktop-full=216b2c54c65a90a954df10e7b78bfd2d73ac77a2dc49a97be990aa3384b9da95

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

