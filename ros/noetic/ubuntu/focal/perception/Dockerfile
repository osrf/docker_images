# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-focal

# label ros packages
LABEL sha256.ros-noetic-perception=0eb998143177650539936c6e4f084365578bf6cccb2e17e85de49d2529de4e30

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-perception=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

