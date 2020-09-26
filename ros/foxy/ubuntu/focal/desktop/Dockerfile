# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# label ros2 packages
LABEL sha256.ros-foxy-desktop=0bee614e72c7f1e219b242d9995def8a751cc55ade80fb750f5a82029ea30293

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

