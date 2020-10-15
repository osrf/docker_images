# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL org.osrfoundation.ros-melodic-perception.sha256=5e42a6ee934d610e7ea6f0a75165915f6875ff8e6fef5acce55f77fdffc12594

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

