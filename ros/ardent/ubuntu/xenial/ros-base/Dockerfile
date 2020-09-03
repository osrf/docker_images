# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:ardent-ros-core-xenial

# label ros2 packages
LABEL sha256.ros-ardent-ros-base=7d7428b064045ca593e13b0305f41fd9fe89df31e69a0db41e2dc1bd10257eb0

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-ardent-ros-base=0.4.0-1* \
    && rm -rf /var/lib/apt/lists/*

