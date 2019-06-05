# This is an auto generated Dockerfile for ros:ros-core
# generated from docker_images_legacy/create_ros_core_image.Dockerfile.em
FROM debian:jessie

# setup source.list to old-releases
RUN sed -i -e 's/archive/old-releases/g' /etc/apt/sources.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install ros packages
ENV ROS_DISTRO kinetic
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-core=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/lib/apt/lists/partial

# setup entrypoint
COPY ./ros_entrypoint.sh /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
