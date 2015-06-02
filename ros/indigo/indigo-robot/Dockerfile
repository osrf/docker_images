# This is an auto generated Dockerfile for ros:indigo-robot
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2015-06-02 14:40:22 -0700
FROM ros:indigo-ros-base
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-robot=1.1.4-0* \
    && rm -rf /var/lib/apt/lists/*

