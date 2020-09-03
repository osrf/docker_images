# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-stretch

# label ros packages
LABEL sha256.ros-lunar-perception=45b489ad236bf92b749852b4d2f488cf21dd052ba344c8dbb8a9cf801bf7facf

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

