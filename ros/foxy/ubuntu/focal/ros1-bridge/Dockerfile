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
LABEL sha256.ros-noetic-ros-comm=b8d39823702d406fe69711e480c9fc66fedd9d0e7c93a31346ed3b6988f65125 \
      sha256.ros-noetic-roscpp-tutorials=a293deba1a35d59ff6af41946780af26d4e55ff201bb1809b72f16eb70be5880 \
      sha256.ros-noetic-rospy-tutorials=2423a9c2740190282bcda1d4cf2b99480df0dc05a15c17e82b5662ba1d79e553

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-comm=1.15.8-1* \
    ros-noetic-roscpp-tutorials=0.10.2-1* \
    ros-noetic-rospy-tutorials=0.10.2-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL sha256.ros-foxy-ros1-bridge=bd80205affaefb1657bc9ce19dce2df44924591fac24ad4ba4dbf70e011fcdfb \
      sha256.ros-foxy-demo-nodes-cpp=88f255ee84107d3d1bdb3ca178d6c903bbf9581e8454cafa6b0ef89ce90f5b27 \
      sha256.ros-foxy-demo-nodes-py=87d931eb7054528bc5cfb522ac1193c5fbee32434c1122cfcd371cd0a96260d5

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros1-bridge=0.9.4-1* \
    ros-foxy-demo-nodes-cpp=0.9.3-1* \
    ros-foxy-demo-nodes-py=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

