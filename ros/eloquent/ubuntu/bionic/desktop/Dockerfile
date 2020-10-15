# This is an auto generated Dockerfile for ros:desktop
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:eloquent-ros-base-bionic

# label ros2 packages
LABEL org.osrfoundation.ros-eloquent-desktop.sha256=423ee592ad7d969a17c0f0164daa90dec57359138ac6fe6309178a15876b2c20

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-eloquent-desktop=0.8.4-1* \
    && rm -rf /var/lib/apt/lists/*

