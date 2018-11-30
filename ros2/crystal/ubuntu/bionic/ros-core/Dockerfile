# This is an auto generated Dockerfile for ros2:ros-core
# generated from docker_images/create_ros2_core_image.Dockerfile.em
FROM ubuntu:bionic

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*


# install packages
RUN apt-get update && apt-get install -q -y \
    dirmngr \
    gnupg2 \
    lsb-release \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*


# setup ros2 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://repo.ros2.org/$ID/main `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    && rm -rf /var/lib/apt/lists/*

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# bootstrap rosdep
ENV ROSDISTRO_INDEX_URL https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
RUN rosdep init \
    && rosdep update

# install python packages
RUN pip3 install -U \
    argcomplete

# install ros2 packages
ENV ROS_DISTRO crystal
RUN apt-get update && apt-get install -y \
    ros-crystal-ros-core \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
