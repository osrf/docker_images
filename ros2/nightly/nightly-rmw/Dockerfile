FROM osrf/ros2:nightly
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      iceoryx_binding_c \
      ignition-math6 \
      ignition-cmake2 \
      rti-connext-dds-6.0.1" \
    && rm -rf /var/lib/apt/lists/*
