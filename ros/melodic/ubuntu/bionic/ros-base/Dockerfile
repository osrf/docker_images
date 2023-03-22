# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-core-bionic

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python-rosdep \
    python-rosinstall \
    python-vcstools \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init && \
  rosdep update --rosdistro $ROS_DISTRO

# copy ros packages
ARG TARGETARCH
COPY ros_packages/$TARGETARCH.txt /etc/apt/ros/ros_packages.txt

# install ros packages
RUN apt-get update \
    && xargs -a /etc/apt/ros/ros_packages.txt \
        apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

