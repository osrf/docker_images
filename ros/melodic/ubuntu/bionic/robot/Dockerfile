# This is an auto generated Dockerfile for ros:robot
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-bionic

# label ros packages
LABEL sha256.ros-melodic-robot=8efabb4a68a7cad4ebe2a2270985870a0ecd0fd24428ce3addff67f6a9ef7b74

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

