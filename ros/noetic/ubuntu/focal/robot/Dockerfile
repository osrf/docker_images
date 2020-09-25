# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-focal

# label ros packages
LABEL sha256.ros-noetic-robot=2a6c6e1d99b75ecb9c1bb35312723c3e757f9b5cc955d19063f1097aef7db9d7

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

