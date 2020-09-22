# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-stretch

# label ros packages
LABEL sha256.ros-melodic-perception=6ddef84cc6ad853264d7851d7845d54d599681b9044358f52f65cfb362a2a361

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

