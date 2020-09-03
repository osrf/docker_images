# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:bouncy-ros-base-bionic

# label ros2 packages
LABEL sha256.ros-bouncy-desktop=b717b536af2ab0565a5e9d69cf1f8db70d0ac9e09a100a3ecb75a6bb08ceaefc

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-bouncy-desktop=0.5.1-0* \
    && rm -rf /var/lib/apt/lists/*

