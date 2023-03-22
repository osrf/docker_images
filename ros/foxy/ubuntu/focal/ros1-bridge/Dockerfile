# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

ENV ROS1_DISTRO noetic
ENV ROS2_DISTRO foxy

# copy ros packages
ARG TARGETARCH
COPY ros_packages/$TARGETARCH.txt /etc/apt/ros/ros_packages.txt

# install ros packages
RUN apt-get update \
    && xargs -a /etc/apt/ros/ros_packages.txt \
        apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# copy ros packages
ARG TARGETARCH
COPY ros2_packages/$TARGETARCH.txt /etc/apt/ros/ros2_packages.txt

# install ros packages
RUN apt-get update \
    && xargs -a /etc/apt/ros/ros2_packages.txt \
        apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

