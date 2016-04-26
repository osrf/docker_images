# This is an auto generated Dockerfile for ros:indigo-ros-base
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2016-04-26 21:55:54 +0000
FROM ros:indigo-ros-core
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-ros-base=1.1.4-0* \
    && rm -rf /var/lib/apt/lists/*

