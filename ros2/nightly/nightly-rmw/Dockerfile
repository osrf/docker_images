FROM osrf/ros2:nightly
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      fastdds \
      rti-connext-dds-7.3.0 \
      " \
    && rm -rf /var/lib/apt/lists/*
