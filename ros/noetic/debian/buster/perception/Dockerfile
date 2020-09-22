# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-buster

# label ros packages
LABEL sha256.ros-noetic-perception=b3262e58b2c2c007e0077b5951d95f2e959e41b120b6bcd805857649241e56b7

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-perception=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

