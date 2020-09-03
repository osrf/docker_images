# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:lunar-desktop-xenial

# label ros packages
LABEL sha256.ros-lunar-desktop-full=a6b8868718d4863c57c108a74f773970021b9d9361a81315b33c7e562d9753c2

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

