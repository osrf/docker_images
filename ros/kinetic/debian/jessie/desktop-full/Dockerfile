# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-jessie

# label ros packages
LABEL sha256.ros-kinetic-desktop-full=4716f91836b924f01ac8d58d00e31842a32f1d0ac59dfafb974e050290e9a7ce

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

