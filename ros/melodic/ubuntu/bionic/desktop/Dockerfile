# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-desktop.sha256=a6da82a754bf3e1cc154dca332c7f4eca068bff4bfb650c47a36e80dcfbc5430

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

