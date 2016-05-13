# This is an auto generated Dockerfile for ros:kinetic-robot
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2016-05-13 23:38:52 +0000
FROM ros:kinetic-ros-base
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-kinetic-robot=1.3.0-0* \
    && rm -rf /var/lib/apt/lists/*

