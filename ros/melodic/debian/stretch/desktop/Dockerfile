# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-stretch

# label ros packages
LABEL sha256.ros-melodic-desktop=06165c6d27026bb384863c9bcaae16f4a04d792d2a664f312b33f94b26531dd5

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

