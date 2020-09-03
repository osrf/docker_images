# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-robot-trusty

# label ros packages
LABEL sha256.ros-indigo-desktop=03c1e6342f6adc6a8773c1fed56ffda26494bf3bc83348349475b9f05e8654e4

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-desktop=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

