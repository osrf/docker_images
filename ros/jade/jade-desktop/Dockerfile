# This is an auto generated Dockerfile for ros:jade-desktop
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2015-06-16 18:12:36 -0700
FROM ros:jade-ros-base
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-jade-desktop=1.2.0-0* \
    && rm -rf /var/lib/apt/lists/*

