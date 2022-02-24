FROM osrf/ros2:nightly-rmw
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
ARG RTI_NC_LICENSE_ACCEPTED=yes
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      " \
    && rm -rf /var/lib/apt/lists/*

# set up environment
ENV NDDSHOME /opt/rti.com/rti_connext_dds-6.0.1
ENV PATH "$NDDSHOME/bin":$PATH
ENV LD_LIBRARY_PATH "$NDDSHOME/lib/x64Linux4gcc7.3.0":$LD_LIBRARY_PATH
