# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-xenial

# label ros packages
LABEL sha256.ros-kinetic-robot=0e35cd6e02ac12a3e416fb0b2c5ed8eaf5c30b3dffd5d6af0f52329061b18e6b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-robot=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

