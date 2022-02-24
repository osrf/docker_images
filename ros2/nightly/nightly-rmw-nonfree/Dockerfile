FROM osrf/ros2:nightly-rmw
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
ARG RTI_NC_LICENSE_ACCEPTED=yes
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      iceoryx_binding_c \
      ignition-math6 \
      ignition-cmake2 \
      " \
    && rm -rf /var/lib/apt/lists/*

# set up environment
ENV NDDSHOME /opt/rti.com/rti_connext_dds-5.3.1
ENV PATH "$NDDSHOME/bin":$PATH
ENV LD_LIBRARY_PATH "$NDDSHOME/lib/x64Linux3gcc5.4.0":$LD_LIBRARY_PATH
