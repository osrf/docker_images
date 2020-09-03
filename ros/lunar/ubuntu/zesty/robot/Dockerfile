# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-base-zesty

# label ros packages
LABEL sha256.ros-lunar-robot=a811943d743d9e760b63524867e49c7df8004e831749fae0a641b7c31011a39b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-robot=1.3.1-0* \
    && rm -rf /var/lib/apt/lists/*

