# This is an auto generated Dockerfile for ros2:ardent-core
# generated from docker_images/create_ros2_core_image.Dockerfile.em
FROM ubuntu:xenial

# install packages
RUN apt-get update && apt-get install -q -y \
    dirmngr \
    gnupg2 \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# setup ros1 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list

# setup ros2 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://repo.ros2.org/$ID/main `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO kinetic
ENV ROS2_DISTRO ardent


# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-rclcpp \
    ros-ardent-rclpy \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros2_entrypoint.sh /

ENTRYPOINT ["/ros2_entrypoint.sh"]
CMD ["bash"]
