# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:jade-ros-base-trusty

# label ros packages
LABEL sha256.ros-jade-perception=28e04740bb38c9fbaba5bcf3ce3d8c3324db2ff7471eff173072e42c388e4cdd

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jade-perception=1.2.1-0* \
    && rm -rf /var/lib/apt/lists/*

