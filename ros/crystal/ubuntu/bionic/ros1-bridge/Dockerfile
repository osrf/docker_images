# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:crystal-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO crystal
# label ros packages
LABEL sha256.ros-melodic-ros-comm=a0fca5a04686610280d507c61b76c956a7acada71255910b7b9b47bf44a375dc \
      sha256.ros-melodic-roscpp-tutorials=d676c108b642f0243992795ee3fb5c75e2ef0b28ccd1e843a9d8603bda3a6555 \
      sha256.ros-melodic-rospy-tutorials=46ee4d1e9f93cca81e75ef0fdbc6701e90ffab2514f049e96700c9f1114cdcea

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-comm=1.14.9-1* \
    ros-melodic-roscpp-tutorials=0.9.3-1* \
    ros-melodic-rospy-tutorials=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL sha256.ros-crystal-ros1-bridge=1e4add90c31883d606eb11d22b8cda7c0fd719c8c225a9da6450fc27859b20fa \
      sha256.ros-crystal-demo-nodes-cpp=46d215586dc8a4675831cae6e40b3414174ec2deeedadd95c289cccd69bfd4c4 \
      sha256.ros-crystal-demo-nodes-py=76015aed76abc3a52aa1d0ff9a48e7ad1745fd1017119aa8b499eba178f00558

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-crystal-ros1-bridge=0.6.2-2* \
    ros-crystal-demo-nodes-cpp=0.6.2-0* \
    ros-crystal-demo-nodes-py=0.6.2-0* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

