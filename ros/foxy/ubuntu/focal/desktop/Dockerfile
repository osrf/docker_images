# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# copy ros packages
ARG TARGETARCH
COPY ros2_packages/$TARGETARCH.txt /etc/apt/ros/ros2_packages.txt

# install ros packages
RUN apt-get update \
    && xargs -a /etc/apt/ros/ros2_packages.txt \
        apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

