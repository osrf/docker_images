# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-jessie

# label ros packages
LABEL sha256.ros-kinetic-robot=4780992da5952b36b595a277d61623681f14f77d2f1708dddf9dd36536674416

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-robot=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

