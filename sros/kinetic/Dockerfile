# This is a Dockerfile for osrf/sros:kinetic with SROS
FROM ubuntu:xenial
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list

# install bootstrap
#   and dev tools
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        python-catkin-tools  \
        python-rosdep \
        python-rosinstall-generator \
        python-wstool \
            bash-completion \
            byobu \
            git \
            less \
            tree \
            wget \
            python-pip && \
    rm -rf /var/lib/apt/lists/*

# set envormetn and workspace
ENV ROS_DISTRO kinetic
ENV CATKIN_WS=/root/sros_catkin_ws
RUN mkdir -p $CATKIN_WS/src
WORKDIR $CATKIN_WS/src

# download sourcecode for sros
RUN rosinstall_generator \
      ros_comm \
      rospy_tutorials \
      --rosdistro ${ROS_DISTRO} \
      --deps \
      --tar > ${ROS_DISTRO}-ros_comm-wet.rosinstall && \
    wstool init -j8 . ${ROS_DISTRO}-ros_comm-wet.rosinstall && \
    rm -rf ros_comm && \
    git clone -b sros https://github.com/ros/ros_comm && \
    git clone -b sros https://github.com/ros-infrastructure/rospkg ../rospkg

# install dependencies
RUN apt-get update && \
    rosdep init && \
    rosdep update && \
    rosdep install -y \
      --from-paths . \
      --ignore-src \
      --rosdistro ${ROS_DISTRO} \
      --as-root=apt:false && \
    pip install --upgrade ../rospkg/ && \
    rm -rf /var/lib/apt/lists/*

# HACK, replacing shell with bash for later docker build commands
RUN mv /bin/sh /bin/sh-old && \
    ln -s /bin/bash /bin/sh

# build repo
WORKDIR $CATKIN_WS
ENV TERM xterm
ENV PYTHONIOENCODING UTF-8
RUN catkin config --install && \
    catkin build --no-status --summarize

# setup demo config
COPY ./config /root/.ros/sros/config/

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
