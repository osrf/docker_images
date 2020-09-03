# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-xenial

# label ros packages
LABEL sha256.ros-lunar-robot=542614f745564cb34ce058de7739245ca654e1f3b7e07427fd44b6c63cad2768

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-robot=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

