# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-stretch

# label ros packages
LABEL sha256.ros-melodic-robot=2687b386e56c07ad5c3429454103347135bc7903ee86ae00fc990cf4dcac763a

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

