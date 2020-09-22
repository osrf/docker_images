# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# label ros2 packages
LABEL sha256.ros-foxy-desktop=067c3082e5a73de0273fa4b03d3f250a9d4fcd2652a1d1ff5e411e7575f2fb7e

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

