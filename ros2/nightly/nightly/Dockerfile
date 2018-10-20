# This is an auto generated Dockerfile for ros2:nightly
# generated from docker_images/create_ros2_nightly_image.Dockerfile.em
FROM ubuntu:bionic

# set timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y \
    bash-completion \
    dirmngr \
    git \
    gnupg2 \
    libasio-dev \
    libtinyxml2-dev \
    lsb-release \
    python3-pip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://repo.ros2.org/$ID/main `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install packages from the ROS repositories
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-catkin-pkg-modules \
    python3-colcon-common-extensions \
    python3-rosdep \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

# install python packages
RUN pip3 install -U \
    argcomplete \
    flake8 \
    flake8-blind-except \
    flake8-builtins \
    flake8-class-newline \
    flake8-comprehensions \
    flake8-deprecated \
    flake8-docstrings \
    flake8-import-order \
    flake8-quotes \
    pytest-repeat \
    pytest-rerunfailures

# bootstrap rosdep
ENV ROSDISTRO_INDEX_URL https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
RUN rosdep init \
    && rosdep update

# download nightly build
ENV ROS2_INSTALL /opt/ros/nightly
RUN mkdir -p $ROS2_INSTALL
WORKDIR $ROS2_INSTALL

ENV ROS2_BINARY_URL https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
RUN wget -q $ROS2_BINARY_URL -O - | \
    tar -xj --strip-components=1 \
      ros2-linux -C $ROS2_INSTALL

# install dependencies
RUN apt-get update && rosdep install -y \
    --from-paths $ROS2_INSTALL/share \
    --ignore-src \
    --rosdistro bouncy \
    --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers" \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_nightly_entrypoint.sh /ros2_entrypoint.sh

WORKDIR /root
ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
