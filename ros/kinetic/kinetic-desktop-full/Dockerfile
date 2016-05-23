# This is an auto generated Dockerfile for ros:kinetic-desktop-full
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2016-05-13 23:38:52 +0000
FROM osrf/ros:kinetic-desktop
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-desktop-full=1.3.0-0* \
    && rm -rf /var/lib/apt/lists/*

