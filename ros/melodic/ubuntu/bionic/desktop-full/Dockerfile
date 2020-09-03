# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-bionic

# label ros packages
LABEL sha256.ros-melodic-desktop-full=bd97faef7cb763073f6de8802ab7bdb562f0a0aeb45a2e1e428ec2898a7d5747

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

