# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-robot-jessie

# label ros packages
LABEL sha256.ros-kinetic-desktop=35d9a0e4613b0d6330a532ed8b521866b7272de4345533f23b7aff7bebe8a485

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

