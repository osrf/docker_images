# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-robot.sha256=340baaf17b7e8608ff24dc66b70754d56d145e8d48f8b6c968f79df6857be32b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-robot=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

