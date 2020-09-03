# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:jade-ros-core-trusty

# label ros packages
LABEL sha256.ros-jade-ros-base=1d8767a036c1cd993f812bd0fe6bd6c642b600bbd1f915cbb59c10447dae5689

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jade-ros-base=1.2.1-0* \
    && rm -rf /var/lib/apt/lists/*

