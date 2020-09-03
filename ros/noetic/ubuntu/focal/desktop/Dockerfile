# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-focal

# label ros packages
LABEL sha256.ros-noetic-desktop=990da02519d6e9a16b7a843bb94c328fec0522fa2935fecce45997c9191577c1

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

