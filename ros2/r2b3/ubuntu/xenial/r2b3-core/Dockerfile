# This is an auto generated Dockerfile for ros2:r2b3-core
# generated from docker_images/create_ros2_core_image.Dockerfile.em
FROM ubuntu:xenial

# setup ros1 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.ros.org/ros/ubuntu $VERSION_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list

# setup ros2 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://repo.ros2.org/$ID/main $VERSION_CODENAME main" > /etc/apt/sources.list.d/ros2-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO kinetic
ENV ROS2_DISTRO r2b3

# install packages
RUN apt-get update && apt-get install -q -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# install python packages
RUN pip3 install -U \
    argcomplete

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-r2b3-demo-nodes-cpp \
    ros-r2b3-demo-nodes-py \
    ros-r2b3-ros2run \
    ros-r2b3-sros2 \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
