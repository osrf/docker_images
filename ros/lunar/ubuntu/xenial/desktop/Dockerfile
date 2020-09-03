# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-robot-xenial

# label ros packages
LABEL sha256.ros-lunar-desktop=836526a678548c60df058018c39731e627233d3dfe555d812e28d456b7063a59

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

