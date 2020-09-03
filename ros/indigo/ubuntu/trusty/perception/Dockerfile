# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:indigo-ros-base-trusty

# label ros packages
LABEL sha256.ros-indigo-perception=8b45d9f4184d97f9cb2cd244ebba30a49b564dd087575c3627977383f87e3248

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-indigo-perception=1.1.6-0* \
    && rm -rf /var/lib/apt/lists/*

