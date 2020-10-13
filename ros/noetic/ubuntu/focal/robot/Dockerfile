# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:noetic-ros-base-focal

# label ros packages
LABEL org.osrfoundation.ros-noetic-robot.sha256=42eda67763e787d4ebf23a3533e9e63779a03fddbea0b62b49aeb350d76d9f13

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-robot=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

