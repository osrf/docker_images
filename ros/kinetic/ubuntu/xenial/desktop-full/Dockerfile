# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:kinetic-desktop-xenial

# label ros packages
LABEL sha256.ros-kinetic-desktop-full=fc9b3bbbd7760ddd3959f24fbc047e2a91f347e42b9ca6adad28dc48aff4d76f

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop-full=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

