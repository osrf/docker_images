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
LABEL org.osrfoundation.ros-melodic-ros-comm.sha256=41f220c83c352d5a3cecaad37614920c8a7c338480e4083699d7f1d1eae06fc4 \
      org.osrfoundation.ros-melodic-roscpp-tutorials.sha256=f49fca05c2692ea5c58107c155fb708a7c40b76ff6e90c3fc223c4c0e47fd083 \
      org.osrfoundation.ros-melodic-rospy-tutorials.sha256=b990f747b59195d9bd749581737f1fb0bd289e8e1389e32d26024bc6101d7922

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-comm=1.14.9-1* \
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

