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
LABEL sha256.ros-dashing-ros1-bridge=a7ee934891873f72455a068407351a1350ac4589a9369b330dc6e77e7e9524ab \
      sha256.ros-dashing-demo-nodes-cpp=7b2e093429cecb20bc73172dba95bd53c861dcb912e97047003f928a33329cb1 \
      sha256.ros-dashing-demo-nodes-py=dc4ca847d6876bccbb9a9e4c36d499766296da79d53f5f89218b39301c6ae65e

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-dashing-ros1-bridge=0.7.6-1* \
    ros-dashing-demo-nodes-cpp=0.7.9-1* \
    ros-dashing-demo-nodes-py=0.7.9-1* \
    && rm -rf /var/lib/apt/lists/*

# install downstream packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    python-rosdep \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

