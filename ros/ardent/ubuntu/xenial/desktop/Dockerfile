# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:ardent-ros-base-xenial

# label ros2 packages
LABEL sha256.ros-ardent-desktop=169ca9ad1283e6d93948dd3b97d6bbfb0341ae34446920b13062d5bcdab33ccf

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-ardent-desktop=0.4.0-1* \
    && rm -rf /var/lib/apt/lists/*

