# This is a Dockerfile for osrf/sros:kinetic with SROS
FROM ubuntu:xenial

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

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

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

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

# FIXME renaming manifest.xml is a workaround for rosdep misbehaving when both
# manifest.xml and package.xml are present
# install dependencies
RUN mv roslisp/manifest.xml roslisp/oldmanifest.xml && \
    apt-get update && \
    rosdep init && \
    rosdep update && \
    rosdep install -y \
      --from-paths . \
      --ignore-src \
      --rosdistro ${ROS_DISTRO} \
      --as-root=apt:false && \
    pip install --upgrade ../rospkg/ && \
    mv roslisp/oldmanifest.xml roslisp/manifest.xml && \
    rm -rf /var/lib/apt/lists/*

# build repo
WORKDIR $CATKIN_WS
ENV TERM xterm
ENV PYTHONIOENCODING UTF-8
RUN catkin config --install && \
    catkin build --no-status --summarize

# setup demo bashrc
RUN echo 'source "$CATKIN_WS/install/setup.bash"' >> ~/.bashrc

# setup demo config
COPY ./config /root/.ros/sros/config/

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
