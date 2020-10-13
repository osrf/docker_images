# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:rolling-ros-base-focal

# label ros2 packages
LABEL org.osrfoundation.ros-rolling-desktop.sha256=b2b3195bf76e330c60b8ea99b81fc081b44490c8cf9ee9b58302fc2bcaf6a260

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-rolling-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

