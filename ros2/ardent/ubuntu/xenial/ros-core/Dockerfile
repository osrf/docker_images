# This is an auto generated Dockerfile for ros2:ros-core
# generated from docker_images/create_ros2_core_image.Dockerfile.em
FROM ubuntu:xenial

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
RUN echo "Release: Wed, 07 Nov 2018 20:26:22 UTC" \
    && echo "Digest: 20b8e180c067738666248434ec59ccd2acf358e57fef5367bfb3638779888b24"

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO ardent

# install python packages
RUN pip3 install -U \
    argcomplete

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-ros-core \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
