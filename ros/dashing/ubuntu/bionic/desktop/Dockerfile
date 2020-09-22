# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:dashing-ros-base-bionic

# label ros2 packages
LABEL sha256.ros-dashing-desktop=38001f9e52a1f152b201759ada19bd653abf492dff3f3c5f47640bfcaa64838b

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-dashing-desktop=0.7.4-1* \
    && rm -rf /var/lib/apt/lists/*

