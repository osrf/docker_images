# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-focal

# label ros packages
LABEL org.osrfoundation.ros-noetic-desktop.sha256=57a9634afad19da714fef165b9ba8338fe69dfbae585e3c49071e44d0236809a

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

