# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:melodic-ros-base-stretch

# label ros packages
LABEL sha256.ros-melodic-perception=18457516040a14efd8aeb71df3940e3e71348fb7e48844b1a854527cf44e1166

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-perception=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

