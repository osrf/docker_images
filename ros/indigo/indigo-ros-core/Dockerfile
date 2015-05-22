# This is an auto generated Dockerfile for ros:indigo-ros-core
# generated from templates/docker_images/create_ros_core_image.Dockerfile.em
# generated on 2015-05-22 14:14:59 -0700
FROM ubuntu:trusty
MAINTAINER Dirk Thomas dthomas+buildfarm@osrfoundation.org

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV TZ PDT+07

# install packages
RUN apt-get update && apt-get install -q -y \
    wget

# setup keys
RUN wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add -

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -q -y \
    python-rosdep \
    python-rosinstall \
    python-vcstools

# bootstrap rosdep
RUN rosdep init \
    && rosdep update

# install ros packages
RUN apt-get update && apt-get install -q -y \
    ros-indigo-ros-core

# setup .bashrc for ROS
ENV ROS_DISTRO indigo
RUN echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc

ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
