# This is an auto generated Dockerfile for ros:perception
# generated from docker_images/create_ros_image.Dockerfile.em
FROM ros:kinetic-ros-base-xenial

# label ros packages
LABEL org.osrfoundation.ros-kinetic-perception.sha256=d17bc4e9469df635191f613427c10f4435bc31940abe259d4bde1af26e34154b

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-perception=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

