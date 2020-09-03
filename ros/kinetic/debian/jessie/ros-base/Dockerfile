# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-core-jessie

# label ros packages
LABEL sha256.ros-kinetic-ros-base=f3d515d7d9707734fa9f666b358f6725518d0e92180b15784cbf5311ea9ce8d0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-ros-base=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

