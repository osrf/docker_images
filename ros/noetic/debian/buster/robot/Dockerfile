# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-buster

# label ros packages
LABEL sha256.ros-noetic-robot=aa909e807d2e76ba8fe901606dcd23b846631c12d89aa251ce9204b5d6aad4e1

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

