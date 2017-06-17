# This is an auto generated Dockerfile for ros2:ros2
# generated from templates/docker_images/create_ros2_image.Dockerfile.em
# generated on 2017-06-17 03:12:52 +0000
FROM ubuntu:xenial
LABEL maintainer "Tully Foote tfoote+buildfarm@osrfoundation.org"

# ROS1 Repo Setup ##############################################################
# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list

# OSRF Repo Setup ##############################################################
# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable xenial main" > /etc/apt/sources.list.d/gazebo-latest.list

# ROS2 Setup ###################################################################
# install packages
RUN apt-get update && apt-get install -q -y \
    build-essential \
    cmake \
    cppcheck \
    git \
    libopencv-dev \
    libopensplice64 \
    locales \
    python-empy \
    python3-empy \
    python3-nose \
    python3-pip \
    python3-setuptools \
    python3-vcstool \
    libtinyxml-dev \
    libeigen3-dev \
    wget \
    clang-format \
    pydocstyle \
    pyflakes \
    python3-coverage \
    python3-mock \
    python3-pep8 \
    uncrustify \
    libasio-dev \
    libtinyxml2-dev \
    libboost-chrono-dev \
    libboost-date-time-dev \
    libboost-program-options-dev \
    libboost-regex-dev \
    libboost-system-dev \
    libboost-thread-dev \
    && rm -rf /var/lib/apt/lists/*

# setup environment
RUN apt-get update && apt-get install -y \
    locales \
    && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# install python packages
RUN pip3 install -U \
    setuptools

# clone source
ENV WS /root/ros2_ws/src
RUN mkdir -p /root/ros2_ws/src
WORKDIR /root/ros2_ws/src
RUN wget https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos \
    && vcs import /root/ros2_ws/src < ros2.repos

# build source
WORKDIR /root/ros2_ws/src/..
RUN src/ament/ament_tools/scripts/ament.py \
    build \
    --build-tests \
    --symlink-install

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
