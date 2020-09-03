# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-zesty

# label ros packages
LABEL sha256.ros-lunar-perception=9051ba97d9cc6d6599b3b28282763efb58178e32cc4e037ec7466d33edb7bccd

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-perception=1.3.1-0* \
    && rm -rf /var/lib/apt/lists/*

