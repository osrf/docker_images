# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-robot-zesty

# label ros packages
LABEL sha256.ros-lunar-desktop=af445665b8e665a83ab77c8d71c0ea2f12df3154b2e5d0378129eec08dd9ee34

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop=1.3.1-0* \
    && rm -rf /var/lib/apt/lists/*

