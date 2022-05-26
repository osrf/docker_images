# This is an auto generated Dockerfile for ros:simulation
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:humble-ros-base-jammy

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-humble-simulation=0.10.0-1* \
    && rm -rf /var/lib/apt/lists/*

