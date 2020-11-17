# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-stretch

# label ros packages
LABEL org.osrfoundation.ros-melodic-perception.sha256=f8d7c8188e3e9079d07e803b085c0f788738a0aad8ba0b853ea59d6db4566127

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

