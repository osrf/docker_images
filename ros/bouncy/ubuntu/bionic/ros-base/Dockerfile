# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:bouncy-ros-core-bionic

# label ros2 packages
LABEL sha256.ros-bouncy-ros-base=664d2b1dd464a15eae9474eb37d615c6731d722a4d4b39b64739dd37ba5c9339

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-bouncy-ros-base=0.5.1-0* \
    && rm -rf /var/lib/apt/lists/*

