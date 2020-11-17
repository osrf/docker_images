# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-robot.sha256=a5b1ff99b8e7dc007e2f597a6f144def8af293b54acc349b09aee981707eeeb0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

