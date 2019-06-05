# This is an auto generated Dockerfile for ros:ros
# generated from docker_images_legacy/create_ros_core_image.Dockerfile.em
FROM ubuntu:lucid

# setup source.list to old-releases
RUN sed -i -e 's/archive/old-releases/g' /etc/apt/sources.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys AD19BAB3CBF125EA

# setup sources.list
RUN echo "deb http://snapshots.ros.org/electric/final/ubuntu lucid main" > /etc/apt/sources.list.d/ros-snapshots.list

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install ros packages
ENV ROS_DISTRO electric
RUN apt-get update && apt-get install -y \
    ros-electric-ros \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/lib/apt/lists/partial

# setup entrypoint
COPY ./ros_entrypoint.sh /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
