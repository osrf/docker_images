# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:crystal-ros-base-bionic

# label ros2 packages
LABEL sha256.ros-crystal-desktop=5958ce69729cfdf8d3026f1f75d44370f9077a01f35b4745510d350e8454f834

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-crystal-desktop=0.6.1-0* \
    && rm -rf /var/lib/apt/lists/*

