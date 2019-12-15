# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:eloquent-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO eloquent
# install ros packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-comm=1.14.3-0* \
    ros-melodic-roscpp-tutorials=0.9.1-0* \
    ros-melodic-rospy-tutorials=0.9.1-0* \
    && rm -rf /var/lib/apt/lists/*

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-eloquent-ros1-bridge=0.8.1-4* \
    ros-eloquent-demo-nodes-cpp=0.8.4-1* \
    ros-eloquent-demo-nodes-py=0.8.4-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
