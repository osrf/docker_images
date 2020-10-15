# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:melodic-desktop-stretch

# label ros packages
LABEL sha256.ros-melodic-desktop-full=a2a4ed6e9833947e56718a0612b88c3b950b27b131e824aef1446eb116cacc5d

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

