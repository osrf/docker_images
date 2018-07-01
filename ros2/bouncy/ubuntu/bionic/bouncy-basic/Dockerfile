# This is an auto generated Dockerfile for ros2:bouncy-basic
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:bouncy-core

# install packages
RUN apt-get update && apt-get install -q -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# install python packages
RUN pip3 install -U \
    argcomplete
# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-bouncy-common-interfaces \
    ros-bouncy-composition \
    ros-bouncy-demo-nodes-cpp \
    ros-bouncy-demo-nodes-cpp-native \
    ros-bouncy-demo-nodes-py \
    ros-bouncy-examples* \
    ros-bouncy-launch \
    ros-bouncy-lifecycle \
    ros-bouncy-logging-demo \
    ros-bouncy-ros2launch \
    ros-bouncy-ros2lifecycle \
    ros-bouncy-ros2msg \
    ros-bouncy-ros2node \
    ros-bouncy-ros2param \
    ros-bouncy-ros2pkg \
    ros-bouncy-ros2run \
    ros-bouncy-ros2service \
    ros-bouncy-ros2srv \
    ros-bouncy-ros2topic \
    ros-bouncy-sros2 \
    ros-bouncy-tf2* \
    ros-bouncy-tlsf* \
    ros-bouncy-topic-monitor \
    && rm -rf /var/lib/apt/lists/*

