# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:jade-desktop-trusty

# label ros packages
LABEL sha256.ros-jade-desktop-full=9702130e2c76012d0aac4f9baf114aecdc597920e3f8023ba32e015e23e42b63

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jade-desktop-full=1.2.1-0* \
    && rm -rf /var/lib/apt/lists/*

