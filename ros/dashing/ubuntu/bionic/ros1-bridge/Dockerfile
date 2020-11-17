# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:dashing-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO dashing

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
LABEL org.osrfoundation.ros-dashing-ros1-bridge.sha256=89dc5e37c76978bb5a6595fcf6a8679fe4e8e1db5739faf02878c1dab3db6149 \
      org.osrfoundation.ros-dashing-demo-nodes-cpp.sha256=600f8292528e8f1847ebf62a3bce4bc8449f968e15b663c399d63f6bc290853d \
      org.osrfoundation.ros-dashing-demo-nodes-py.sha256=282bbc6427108155fd331f9265271d1fea131535f4a7f523699eccb6c66678a2

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-dashing-ros1-bridge=0.7.6-3* \
    ros-dashing-demo-nodes-cpp=0.7.9-1* \
    ros-dashing-demo-nodes-py=0.7.9-1* \
    && rm -rf /var/lib/apt/lists/*

# install downstream packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python-rosdep \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

