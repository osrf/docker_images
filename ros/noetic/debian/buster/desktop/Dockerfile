# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-buster

# label ros packages
LABEL org.osrfoundation.ros-noetic-desktop.sha256=c8e63f3d9c53b13f8c62485e1592061c9de3bd7437517e6cc79e7411799af778

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

