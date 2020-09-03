# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:rolling-ros-base-focal

# label ros2 packages
LABEL sha256.ros-rolling-desktop=326adef4b12ec616d4bfbf1f222f8e80a7aee775bc993a6645f542e9a851520b

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-rolling-desktop=0.9.1-2* \
    && rm -rf /var/lib/apt/lists/*

