# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-ros-base-trusty

# label ros packages
LABEL sha256.ros-indigo-robot=22f7cb6b67b22eede11ef0b7437a04e648f3f380a1d5fdffedd52f1df84adf6c

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-robot=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

