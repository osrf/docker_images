# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-buster

# label ros packages
LABEL sha256.ros-noetic-perception=0d75e0bbdab4ca0cc936256265bccdba1007d8bdd63587da2d5d6210fd3b1006

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-perception=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

