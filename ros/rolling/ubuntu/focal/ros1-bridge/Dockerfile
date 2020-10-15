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
LABEL org.osrfoundation.ros-noetic-ros-comm.sha256=b8d39823702d406fe69711e480c9fc66fedd9d0e7c93a31346ed3b6988f65125 \
      org.osrfoundation.ros-noetic-roscpp-tutorials.sha256=a293deba1a35d59ff6af41946780af26d4e55ff201bb1809b72f16eb70be5880 \
      org.osrfoundation.ros-noetic-rospy-tutorials.sha256=2423a9c2740190282bcda1d4cf2b99480df0dc05a15c17e82b5662ba1d79e553

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-comm=1.15.8-1* \
    ros-noetic-roscpp-tutorials=0.10.2-1* \
    ros-noetic-rospy-tutorials=0.10.2-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL org.osrfoundation.ros-rolling-ros1-bridge.sha256=6c4742a3f7b8d3f171cfa3801d972d737100a81d8ef6bef0d155d7ecb6ba43c7 \
      org.osrfoundation.ros-rolling-demo-nodes-cpp.sha256=85aefe28c8c8357b44d6fa3c1d2d56a0c8d164a2b3b35e61c66098bbbe92f1f0 \
      org.osrfoundation.ros-rolling-demo-nodes-py.sha256=ca7fe4e5b0faae51a01519d8c54a8bf8a22d3460f5f4a315c08c190fcd23b6d2

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-rolling-ros1-bridge=0.9.4-2* \
    ros-rolling-demo-nodes-cpp=0.10.1-1* \
    ros-rolling-demo-nodes-py=0.10.1-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

