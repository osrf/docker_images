# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-ros-core-trusty

# label ros packages
LABEL sha256.ros-indigo-ros-base=0ff319b9f3023a7e7538c541a373af3690d0249c9ed237cac1661120cef6dabf

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-ros-base=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

