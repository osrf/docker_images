# This is an auto generated Dockerfile for ros2:ros1-bridge
# generated from docker_images/create_ros2_ros1_bridge_image.Dockerfile.em
FROM osrf/ros2:crystal-desktop

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO crystal
# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-crystal-ros1-bridge \
    ros-crystal-turtlebot2-demo \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros1_bridge_entrypoint.sh /

ENTRYPOINT ["/ros1_bridge_entrypoint.sh"]
CMD ["bash"]
