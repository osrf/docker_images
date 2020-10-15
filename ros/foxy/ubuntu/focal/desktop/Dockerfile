# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# label ros2 packages
LABEL org.osrfoundation.ros-foxy-desktop.sha256=ea087f425f8c087d943b6ad98fe52368127ec919bddb7410ab11842bfdf0c1be

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

