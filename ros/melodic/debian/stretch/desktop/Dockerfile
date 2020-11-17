# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-stretch

# label ros packages
LABEL org.osrfoundation.ros-melodic-desktop.sha256=e0e99548d4b86dcf11273f8d12e0eaf36f9d4fb0e6beb1300fba701917a125cc

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

