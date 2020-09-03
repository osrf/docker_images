# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:jade-robot-trusty

# label ros packages
LABEL sha256.ros-jade-desktop=2984bca2418be953362dddb4ad45b9b1b0bd99a02fd6b838fcd2a8eac6a2e4b9

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jade-desktop=1.2.1-0* \
    && rm -rf /var/lib/apt/lists/*

