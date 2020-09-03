# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-core-zesty

# label ros packages
LABEL sha256.ros-lunar-ros-base=bf2303fff94a587784a18507aabef2bfc372135a48bb1a5cd38aa9e5c1ef8c71

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-ros-base=1.3.1-0* \
    && rm -rf /var/lib/apt/lists/*

