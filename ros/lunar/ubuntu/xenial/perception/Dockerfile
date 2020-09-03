# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-xenial

# label ros packages
LABEL sha256.ros-lunar-perception=d9c776e30fe4274b787f69c9d8cd0c42c6823aa6f741728dbb7d75713e2e82c4

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

