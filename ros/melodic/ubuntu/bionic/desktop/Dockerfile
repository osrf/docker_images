# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-bionic

# label ros packages
LABEL sha256.ros-melodic-desktop=48639769187c88a5c65950bd48a7f771680526dec5d36c7c32e26d546c54f274

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

