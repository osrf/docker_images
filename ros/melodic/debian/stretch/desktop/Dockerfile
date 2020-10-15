# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-robot-stretch

# label ros packages
LABEL sha256.ros-melodic-desktop=b1b0623db94b783d33f0e8ac11fc9af020ef030d4b7521866383994881166455

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

