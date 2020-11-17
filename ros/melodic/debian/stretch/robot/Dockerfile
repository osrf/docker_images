# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-stretch

# label ros packages
LABEL org.osrfoundation.ros-melodic-robot.sha256=d1968a8cc73c14140b96a8f3b862b614e3ca674e51afc5330602ca7f57066607

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

