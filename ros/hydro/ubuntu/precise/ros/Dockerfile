# This is an auto generated Dockerfile for ros:ros
# generated from docker_images_legacy/create_ros_core_image.Dockerfile.em
FROM ubuntu:precise

RUN find /etc/apt/ -name *.list -exec sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' {} \;

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 4B63CF8FDE49746E98FA01DDAD19BAB3CBF125EA

# setup sources.list
RUN echo "deb http://snapshots.ros.org/hydro/final/ubuntu precise main" > /etc/apt/sources.list.d/ros1-snapshots.list

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install ros packages
ENV ROS_DISTRO hydro
RUN apt-get update && apt-get install -y \
    ros-hydro-ros \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/lib/apt/lists/partial

# setup entrypoint
COPY ./ros_entrypoint.sh /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
