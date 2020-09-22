# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL sha256.ros-melodic-perception=85d89645dde03c38ed55f80f22d3f9c9ad32e79497d5eb314e091bd1f35d260e

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

