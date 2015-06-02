# This is an auto generated Dockerfile for ros:indigo-ros-base
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2015-06-01 18:08:36 -0700
FROM ros:indigo-ros-core
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-ros-base=1.1.4-0* \
    && rm -rf /var/lib/apt/lists/*

