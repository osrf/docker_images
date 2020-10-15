# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-core-buster

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init && \
  rosdep update --rosdistro $ROS_DISTRO

# label ros packages
LABEL org.osrfoundation.ros-noetic-ros-base.sha256=bccca78596b9bd871a6875b2cd742e6536816bea1710064bd78a70b249184be3

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-base=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

