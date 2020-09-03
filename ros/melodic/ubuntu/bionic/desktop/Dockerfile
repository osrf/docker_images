# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-bionic

# label ros packages
LABEL sha256.ros-melodic-desktop=5ae5b96f258187e265abfc7cd6a22ea7eb4a6389ca3531f404bcf7d9986ba475

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

