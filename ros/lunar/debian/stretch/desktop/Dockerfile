# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-robot-stretch

# label ros packages
LABEL sha256.ros-lunar-desktop=43b3f28fa70aab20db62a2553eb4555269e5b9c24d36991c0684c91f4983323f

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

