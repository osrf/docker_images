# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:rolling-ros-base-focal

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO noetic
ENV ROS2_DISTRO rolling

# label ros packages
LABEL sha256.ros-noetic-ros-comm=265f35291ff4339377e247fd094d6f122958db85e4db656d8bb4aa275978929a \
      sha256.ros-noetic-roscpp-tutorials=a4bafc15b204f8cd7457a4500be4e9e53edc6721e0a64bae03c6fe65ed1eb3e6 \
      sha256.ros-noetic-rospy-tutorials=46cf19b27678c1d70a73c33e30ce4fd4a23e651dc0a0da39234c5a673ce550be

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-comm=1.15.8-1* \
    ros-noetic-roscpp-tutorials=0.10.2-1* \
    ros-noetic-rospy-tutorials=0.10.2-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL sha256.ros-rolling-ros1-bridge=57b580f25e8f1e416cf22322f393f5e184b487a41e4471a65effc8a126e9add2 \
      sha256.ros-rolling-demo-nodes-cpp=5e21bb58eff49573d5d83e3a6dfdd0edff59418990a86d8751ea83deaa136934 \
      sha256.ros-rolling-demo-nodes-py=5ba20c171117c0198b15c5e20101eb3eeac17bf8bd3715056c05a4ffd0178981

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-rolling-ros1-bridge=0.9.2-2* \
    ros-rolling-demo-nodes-cpp=0.10.0-1* \
    ros-rolling-demo-nodes-py=0.10.0-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

