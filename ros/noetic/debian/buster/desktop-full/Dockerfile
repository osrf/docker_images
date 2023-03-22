# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:noetic-desktop-buster

# copy ros packages
ARG TARGETARCH
COPY ros_packages/$TARGETARCH.txt /etc/apt/ros/ros_packages.txt

# install ros packages
RUN apt-get update \
    && xargs -a /etc/apt/ros/ros_packages.txt \
        apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

