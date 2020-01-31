# This is an auto generated Dockerfile for ros:nightly-rmw
# generated from docker_images_ros2/nightly/create_ros_nightly_overlay.Dockerfile.em
FROM osrf/ros2:nightly

# bootstrap rosdep
RUN rosdep update --rosdistro $ROS_DISTRO

# install dependencies
RUN . /opt/ros/$ROS_DISTRO/setup.sh \
    && apt-get update \
    && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      rti-connext-dds-5.3.1" \
    && rm -rf /var/lib/apt/lists/*

