# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-core-stretch

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

# label ros packages
LABEL org.osrfoundation.ros-melodic-ros-base.sha256=ec7debd4424c8646207b78bc91ad1d88a522203e37605d0d7de719a62afada91

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-base=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

