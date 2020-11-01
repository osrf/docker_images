# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:dashing-ros-base-bionic

# label ros2 packages
LABEL org.osrfoundation.ros-dashing-desktop.sha256=1542c87d10c51f6109ac2c183df136463f5c1bcdeb88311682c416bfbb9dbc3c

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-dashing-desktop=0.7.4-1* \
    && rm -rf /var/lib/apt/lists/*

