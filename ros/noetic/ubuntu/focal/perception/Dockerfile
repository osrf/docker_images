# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-focal

# label ros packages
LABEL sha256.ros-noetic-perception=9d410adf22169130b240d0f9710bd37fd7f59b1f29695f8f3ef4493ed213039b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-perception=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

