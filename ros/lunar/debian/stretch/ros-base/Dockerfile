# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:lunar-ros-core-stretch

# label ros packages
LABEL sha256.ros-lunar-ros-base=9b96316bb01a26df02ba98026b780bf1855cca882345815331204adfde6f36aa

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-lunar-ros-base=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

