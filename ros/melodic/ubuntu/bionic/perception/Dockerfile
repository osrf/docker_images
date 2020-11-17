# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-perception.sha256=b69b4d5d0b3452f284418fb3af69e1f4d443a28d4badae32c6835397a91cdb58

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

