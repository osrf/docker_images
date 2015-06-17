# This is an auto generated Dockerfile for ros:indigo-desktop-full
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2015-06-11 12:00:22 -0700
FROM osrf/ros:indigo-desktop
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-desktop-full=1.1.4-0* \
    && rm -rf /var/lib/apt/lists/*

