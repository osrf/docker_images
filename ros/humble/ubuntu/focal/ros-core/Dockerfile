# Adapted from ros/foxy/ubuntu/focal/ros-core/Dockerfile
# Usage:
#   docker build . -t ros:humble-ros-core-focal
# 
# Documentation for ros1_bridge setup: https://github.com/ros2/ros1_bridge?tab=readme-ov-file#building-the-bridge-from-source

# We use focal becaue ROS 1 can be installed with binaries,
# and ROS 2 humble supports compilation as a Tier 3  platform per REP-2000.
# There is another repository that uses a Jammy base image, but requires
# more changes.
# https://github.com/TommyChangUMD/ros-humble-ros1-bridge-builder/issues/21

FROM ubuntu:focal

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 4B63CF8FDE49746E98FA01DDAD19BAB3CBF125EA

# setup sources.list
RUN echo "deb http://snapshots.ros.org/foxy/final/ubuntu focal main" > /etc/apt/sources.list.d/ros2-snapshots.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO humble

# install ros2 packages
# Note - There don't seem to be separate VCS files for core, base, and everything.
# For now, just use upstream's big list.

# https://docs.ros.org/en/humble/Installation/Alternatives/Ubuntu-Development-Setup.html#install-development-tools-and-ros-tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-flake8-docstrings \
    python3-pip \
    python3-pytest-cov \
    ros-dev-tools \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install -U \
    flake8-blind-except \
    flake8-builtins \
    flake8-class-newline \
    flake8-comprehensions \
    flake8-deprecated \
    flake8-import-order \
    flake8-quotes \
    "pytest>=5.3" \
    pytest-repeat \
    pytest-rerunfailures

WORKDIR /ws

RUN mkdir src
RUN vcs import --input https://raw.githubusercontent.com/ros2/ros2/humble/ros2.repos src
RUN apt-get update && \
    rosdep init && \
    rosdep update && \
    rosdep install --from-paths src --ignore-src -y --skip-keys \
        "fastcdr rti-connext-dds-6.0.1 urdfdom_headers"

# Disable testing to make the build faster. 
RUN colcon build --install-base /opt/ros/humble --cmake-args -DBUILD_TESTING=OFF

ENV ROS2_INSTALL_PATH=/opt/ros/humble

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]