# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL sha256.ros-melodic-robot=2c9e4eef14000d66722a84850bdcf55449db051829258505126e64ddc9a415be

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

