# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:bouncy-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO bouncy
# install ros packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-comm=1.14.3-0* \
    && rm -rf /var/lib/apt/lists/*

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-bouncy-ros1-bridge=0.5.1-0* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
