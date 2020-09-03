# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:lunar-desktop-zesty

# label ros packages
LABEL sha256.ros-lunar-desktop-full=04d56d44786e8f34f9f20936c58b52eaf47765571b3cbc3e91bf39dcc25c2b66

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop-full=1.3.1-0* \
    && rm -rf /var/lib/apt/lists/*

