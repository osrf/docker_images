# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-buster

# label ros packages
LABEL sha256.ros-noetic-desktop=384ef7e5a5fa0711cb36f5bb8fd1c2be95e19ba8d85717fadea1f9e4f8bcf349

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

