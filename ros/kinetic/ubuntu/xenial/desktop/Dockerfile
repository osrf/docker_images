# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-robot-xenial

# label ros packages
LABEL sha256.ros-kinetic-desktop=b9622d22222dca7554ce11e6c42abd6e0412bce289f0b2f334f2b728d322ec66

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-desktop=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

