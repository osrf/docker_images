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
LABEL sha256.ros-eloquent-ros1-bridge=969cd222afd076ae3989f73a1dbea0f877f29983e062415697e721e52a6f7f4f \
      sha256.ros-eloquent-demo-nodes-cpp=e07fd5f0b1afbd1695b5afb0a8e6d8bcba213ff1690fe5c8768a364578d0fcfc \
      sha256.ros-eloquent-demo-nodes-py=36cc41b867918c9a2206ec8d1a1643529523fce4d876736e85c285e6fd9f2d5f

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-eloquent-ros1-bridge=0.8.2-1* \
    ros-eloquent-demo-nodes-cpp=0.8.4-1* \
    ros-eloquent-demo-nodes-py=0.8.4-1* \
    && rm -rf /var/lib/apt/lists/*

# install downstream packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python-rosdep \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

