# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-focal

# label ros packages
LABEL sha256.ros-noetic-desktop=02bb5e9bff827e959f0dc551ce35c84f115782a8b5b0db33aa4d6d15ce847850

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

