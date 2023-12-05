# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:ardent-ros-base-xenial

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 4B63CF8FDE49746E98FA01DDAD19BAB3CBF125EA

# setup sources.list
RUN echo "deb http://snapshots.ros.org/kinetic/final/ubuntu xenial main" > /etc/apt/sources.list.d/ros1-snapshots.list

ENV ROS1_DISTRO kinetic
ENV ROS2_DISTRO ardent

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-ros-comm=1.12.17-1* \
    && rm -rf /var/lib/apt/lists/*

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-ros1-bridge=0.4.0-0* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
