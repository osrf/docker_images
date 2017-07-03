# This is an auto generated Dockerfile for ros2:ros2
# generated from templates/docker_images/create_ros2_image.Dockerfile.em
FROM ubuntu:xenial

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.ros.org/ros/$ID $VERSION_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $VERSION_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list

# install packages
RUN apt-get update && apt-get install -q -y \
    build-essential \
    clang-format \
    cmake \
    cppcheck \
    git \
    libasio-dev \
    libeigen3-dev \
    libopencv-dev \
    libpoco-dev \
    libpocofoundation9v5 \
    libpocofoundation9v5-dbg \
    libssl-dev \
    libtinyxml-dev \
    libtinyxml2-dev \
    openssl \
    pydocstyle \
    pyflakes \
    python3-coverage \
    python3-dev \
    python3-empy \
    python3-empy \
    python3-mock \
    python3-nose \
    python3-pep8 \
    python3-pip \
    python3-setuptools \
    python3-vcstool \
    uncrustify \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install python packages
RUN pip3 install -U \
    flake8-import-order \
    argcomplete

# clone source
ENV ROS2_WS /root/ros2_ws/src
RUN mkdir -p $ROS2_WS/src
WORKDIR $ROS2_WS
RUN wget https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos \
    && vcs import src < ros2.repos

# build source
WORKDIR $ROS2_WS
RUN src/ament/ament_tools/scripts/ament.py \
    build \
    --symlink-install \
    --isolated \
    --parallel \
    --cmake-args \
    -DSECURITY=ON --

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
