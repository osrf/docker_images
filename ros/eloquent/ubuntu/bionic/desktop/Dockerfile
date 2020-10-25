# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:eloquent-ros-base-bionic

# label ros2 packages
LABEL org.osrfoundation.ros-eloquent-desktop.sha256=58cecfcc1c773d28ea3d9642f7904e099cd9fe65280b935d433a9d57d575eef1

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-eloquent-desktop=0.8.4-1* \
    && rm -rf /var/lib/apt/lists/*

