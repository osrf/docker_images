# This is an auto generated Dockerfile for ros2:ardent-basic
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:ardent-core

# install packages
RUN apt-get update && apt-get install -q -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# install python packages
RUN pip3 install -U \
    argcomplete
# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-common-interfaces \
    ros-ardent-composition \
    ros-ardent-demo-nodes-cpp \
    ros-ardent-demo-nodes-cpp-native \
    ros-ardent-demo-nodes-py \
    ros-ardent-examples* \
    ros-ardent-launch \
    ros-ardent-lifecycle \
    ros-ardent-logging-demo \
    ros-ardent-ros2msg \
    ros-ardent-ros2node \
    ros-ardent-ros2pkg \
    ros-ardent-ros2run \
    ros-ardent-ros2service \
    ros-ardent-ros2srv \
    ros-ardent-ros2topic \
    ros-ardent-sros2 \
    ros-ardent-tf2* \
    ros-ardent-tlsf* \
    ros-ardent-topic-monitor \
    && rm -rf /var/lib/apt/lists/*

