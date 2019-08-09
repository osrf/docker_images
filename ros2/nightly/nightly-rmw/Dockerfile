FROM osrf/ros2:nightly

# install dependencies
RUN . /opt/ros/$ROS_DISTRO/setup.sh \
    && apt-get update \
    && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      rti-connext-dds-5.3.1" \
    && rm -rf /var/lib/apt/lists/*
