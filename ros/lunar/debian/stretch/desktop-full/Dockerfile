# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:lunar-desktop-stretch

# label ros packages
LABEL sha256.ros-lunar-desktop-full=616ebd13952a7501757784efb9f84c4d4469e2d1a7888cbeafbf0068bae26bca

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

