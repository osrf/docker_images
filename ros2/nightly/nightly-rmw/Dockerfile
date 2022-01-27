FROM osrf/ros2:nightly
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      rti-connext-dds-5.3.1" \
    && rm -rf /var/lib/apt/lists/*
