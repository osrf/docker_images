# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-robot-xenial

# label ros packages
LABEL sha256.ros-kinetic-desktop=afd3c7d78829880ec8146c200bac80920735b06b4ca4d1d34945ef7d495a259f

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

