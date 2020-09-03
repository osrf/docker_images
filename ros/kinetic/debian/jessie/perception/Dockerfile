# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-jessie

# label ros packages
LABEL sha256.ros-kinetic-perception=0cda0cae49156d95a2616240950ed8de1ce0bd8a20ba0a1116b062f4d0b149df

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

