# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-stretch

# label ros packages
LABEL sha256.ros-melodic-desktop-full=496d7b6c66b7f8dbdddda0de1cf2a4c5106234ad6a300ebde345826d91cd44d5

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

