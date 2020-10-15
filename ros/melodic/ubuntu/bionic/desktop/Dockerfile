# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-desktop.sha256=c6a7a61a817380e80c3b684ef1807bc2c79bab9b69ac6db7b5b5b6389dac971f

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

