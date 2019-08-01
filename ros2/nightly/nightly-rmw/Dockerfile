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

# setup RTI Connext DDS
ENV NDDSHOME="/opt/rti.com/rti_connext_dds-5.3.1"
ENV PATH="$NDDSHOME/bin":$PATH
ENV LD_LIBRARY_PATH="$NDDSHOME/lib/x64Linux3gcc5.4.0":$LD_LIBRARY_PATH