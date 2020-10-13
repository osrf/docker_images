# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-perception.sha256=7c8a2df83dbaf9bce97adcaa8ad1bf91781c27e5938417e47bf404411aca36f5

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

