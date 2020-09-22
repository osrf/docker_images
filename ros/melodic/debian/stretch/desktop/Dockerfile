# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-stretch

# label ros packages
LABEL sha256.ros-melodic-desktop=0a5380b3d8db4ed4299a680cbdee84d5200f921b88f6ee325cb84dc5e3f369af

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

