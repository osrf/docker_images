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
LABEL org.osrfoundation.ros-foxy-ros1-bridge.sha256=50f85fd7284a28ec22815e8cdf1be99f27a46bbc48bcc2aae9683ad16e1ff3cf \
      org.osrfoundation.ros-foxy-demo-nodes-cpp.sha256=e9e9dc92cfb319212d2a85049b5a3b9231dfb01140be357a0acd7866eef67d05 \
      org.osrfoundation.ros-foxy-demo-nodes-py.sha256=2ed35ba68b6f77c10b2525a7eb8c4f6730be33176f589d16d67c7299e9eb6e84

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros1-bridge=0.9.4-1* \
    ros-foxy-demo-nodes-cpp=0.9.3-1* \
    ros-foxy-demo-nodes-py=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

