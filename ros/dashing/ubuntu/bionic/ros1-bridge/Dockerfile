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
LABEL org.osrfoundation.ros-dashing-ros1-bridge.sha256=a7ee934891873f72455a068407351a1350ac4589a9369b330dc6e77e7e9524ab \
      org.osrfoundation.ros-dashing-demo-nodes-cpp.sha256=7b2e093429cecb20bc73172dba95bd53c861dcb912e97047003f928a33329cb1 \
      org.osrfoundation.ros-dashing-demo-nodes-py.sha256=dc4ca847d6876bccbb9a9e4c36d499766296da79d53f5f89218b39301c6ae65e

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-dashing-ros1-bridge=0.7.6-1* \
    ros-dashing-demo-nodes-cpp=0.7.9-1* \
    ros-dashing-demo-nodes-py=0.7.9-1* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

