# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-focal

# label ros packages
LABEL sha256.ros-noetic-robot=c18a8b1ec32663a2872b80efca1cca31bc6e255a348f479b3245162cfb250c3e

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

