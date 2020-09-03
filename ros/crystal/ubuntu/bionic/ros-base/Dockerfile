# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:crystal-ros-core-bionic

# label ros2 packages
LABEL sha256.ros-crystal-ros-base=e27ba609eeac189faedf140083bc0a6710b16aa4b0e5c7c38935c1fdd9b82e59

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-crystal-ros-base=0.6.1-0* \
    && rm -rf /var/lib/apt/lists/*

