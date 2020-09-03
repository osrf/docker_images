# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# label ros2 packages
LABEL sha256.ros-foxy-desktop=b20259a73af4f882642c055d7c1b6b5c0bf6c84832e33a39e97a1633a1aca330

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

