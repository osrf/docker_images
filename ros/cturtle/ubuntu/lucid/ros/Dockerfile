# This is an auto generated Dockerfile for ros:ros
# generated from docker_images/create_ros_eol_image.Dockerfile.em
FROM ubuntu:lucid

# setup source.list to eol
RUN sed -i -e 's/archive/old-releases/g' /etc/apt/sources.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu lucid main" > /etc/apt/sources.list.d/ros-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install ros packages
ENV ROS_DISTRO cturtle
RUN apt-get update && apt-get install -y \
    ros-cturtle-ros \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/lib/apt/lists/partial

# setup entrypoint
COPY ./ros_eol_entrypoint.sh /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
