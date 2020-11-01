# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-desktop-full.sha256=6211a6b6cdc9e437d8cd147c621e87a44e0897f30bbe5bf70a13d435bb845aa9

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

