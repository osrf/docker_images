# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# label ros2 packages
LABEL org.osrfoundation.ros-foxy-desktop.sha256=5a5249f7767b0483cf188307570a152c7ac06179e35671a2a8ce108f08f20d9d

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

