# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-stretch

# label ros packages
LABEL sha256.ros-lunar-robot=f8d6cf9c877d29f7834f01d7a25de651283589d05bea5fc12692259b0fd1b29c

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-robot=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

