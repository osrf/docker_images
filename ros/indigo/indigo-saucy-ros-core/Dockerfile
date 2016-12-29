# This is NOT an auto generated Dockerfile. Instead, copy and modify osrf/docker_images/ros/indigo/indigo-ros-core/Dockerfile.

FROM ubuntu:saucy
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu saucy main" > /etc/apt/sources.list.d/ros-latest.list

### BEGIN Ubuntu old-release hack ###
# Because apt-get update for Saucy fails due to missing folder in http://archive.ubuntu.com/ubuntu, disable /etc/apt/sources.list
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bk && touch /etc/apt/sources.list
ENV SAUCY_DEB_REPOS="deb http://old-releases.ubuntu.com/ubuntu/ saucy main restricted \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy main restricted \ndeb http://old-releases.ubuntu.com/ubuntu/ saucy-updates main restricted \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy-updates main restricted \ndeb http://old-releases.ubuntu.com/ubuntu/ saucy universe \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy universe \ndeb http://old-releases.ubuntu.com/ubuntu/ saucy-updates universe \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy-updates universe \ndeb http://old-releases.ubuntu.com/ubuntu/ saucy-security main restricted \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy-security main restricted \ndeb http://old-releases.ubuntu.com/ubuntu/ saucy-security universe \ndeb-src http://old-releases.ubuntu.com/ubuntu/ saucy-security universe"
RUN echo "$SAUCY_DEB_REPOS" > /etc/apt/sources.list
RUN ls -l /etc/apt/sources.list; more /etc/apt/sources.list
### END Ubuntu old-release hack ###

# install bootstrap tools
RUN apt-get update
RUN apt-get install --no-install-recommends -y \
    python-rosdep \
    python-rosinstall \
    python-vcstools \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init \
    && rosdep update

# install ros packages
ENV ROS_DISTRO indigo
RUN apt-get update && apt-get install -y \
    ros-indigo-ros-core \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
