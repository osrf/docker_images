# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-core-xenial

# label ros packages
LABEL sha256.ros-lunar-ros-base=0fda27c30c882f877f5b134f4e752136ab5952bcafcd42f9775147dd9d872730

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-ros-base=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

