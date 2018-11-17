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

# break build cache for sync
RUN apt-get update \
    && . /etc/os-release \
    && echo "Release: Thu, 15 Nov 2018 21:55:19 UTC" \
    && export SUM=d18772441d1abd08e247af6cba22207e4f207306e6b98be79c53d0c074bc2ec1 \
    && export FILE=/var/lib/apt/lists/repo.ros2.org_ubuntu_main_dists_$(lsb_release -sc)_InRelease \
    && echo "$SUM *$FILE" | sha256sum --check \
    && rm -rf /var/lib/apt/lists/*

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO bouncy

# install python packages
RUN pip3 install -U \
    argcomplete

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-bouncy-ros-core \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
