# This is an auto generated Dockerfile for ros:jade-desktop-full
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2015-06-16 18:12:36 -0700
FROM osrf/ros:jade-desktop
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-jade-desktop-full=1.2.0-0* \
    && rm -rf /var/lib/apt/lists/*

