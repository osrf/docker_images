# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:eloquent-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO eloquent

# label ros packages
LABEL org.osrfoundation.ros-melodic-ros-comm.sha256=f37c1c75dae8d2d19709a0a12aa0fbe1719b58f1ac0d3b3e124492f5a788d2aa \
      org.osrfoundation.ros-melodic-roscpp-tutorials.sha256=6a073d204d91a6c63d5206486dba14ae087ceb3ea181724f16d6ee464ad450e0 \
      org.osrfoundation.ros-melodic-rospy-tutorials.sha256=b5400e8cafe4905db2160a059e66a51efbc2547181a458915451f432139649c2

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-comm=1.14.10-1* \
    ros-melodic-roscpp-tutorials=0.9.3-1* \
    ros-melodic-rospy-tutorials=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL org.osrfoundation.ros-eloquent-ros1-bridge.sha256=678988e1c257e8433f426db2c28e65c189f85eac82fdb4084101d3d0124c4e0e \
      org.osrfoundation.ros-eloquent-demo-nodes-cpp.sha256=e07fd5f0b1afbd1695b5afb0a8e6d8bcba213ff1690fe5c8768a364578d0fcfc \
      org.osrfoundation.ros-eloquent-demo-nodes-py.sha256=36cc41b867918c9a2206ec8d1a1643529523fce4d876736e85c285e6fd9f2d5f

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-eloquent-ros1-bridge=0.8.2-3* \
    ros-eloquent-demo-nodes-cpp=0.8.4-1* \
    ros-eloquent-demo-nodes-py=0.8.4-1* \
    && rm -rf /var/lib/apt/lists/*

# install downstream packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python-rosdep \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

