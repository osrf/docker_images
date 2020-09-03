# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-robot-buster

# label ros packages
LABEL sha256.ros-noetic-desktop=0c805ead032255591ad684eebd06ef4e216048c8a4d4d4243d87f49ffedadd1b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

