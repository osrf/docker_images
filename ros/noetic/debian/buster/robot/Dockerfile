# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-buster

# label ros packages
LABEL sha256.ros-noetic-robot=080df96e6aad9e8ccc140cc620c3ed160b87e06fb202f2b2e6f34eb5859d3f4d

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

