# This is an auto generated Dockerfile for ros:nightly-rmw
# generated from docker_images_ros2/nightly/create_ros_rmw_image.Dockerfile.em
FROM osrf/ros2:nightly

# install dependencies
ENV RTI_NC_LICENSE_ACCEPTED=yes
RUN . /opt/ros/$ROS_DISTRO/setup.sh \
    && apt-get update \
    && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      " \
    && rm -rf /var/lib/apt/lists/*
