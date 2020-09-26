# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO noetic
ENV ROS2_DISTRO foxy

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
LABEL sha256.ros-foxy-ros1-bridge=d15b1536bd08682b3f9b86266c3c4427becdc8abe76c9d1ebb6743466a33b6b9 \
      sha256.ros-foxy-demo-nodes-cpp=6766f0d78c381223ed1d91e6b85e4aedb652a75864610b6e9335f8df7ac6d097 \
      sha256.ros-foxy-demo-nodes-py=2791532930d41505045ed89c2acb02104a7d16b0656c60f0d9702b0482e65d0d

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros1-bridge=0.9.4-1* \
    ros-foxy-demo-nodes-cpp=0.9.3-1* \
    ros-foxy-demo-nodes-py=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

