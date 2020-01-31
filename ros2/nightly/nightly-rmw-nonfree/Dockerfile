# This is an auto generated Dockerfile for ros:nightly-rmw-nonfree
# generated from docker_images_ros2/nightly/create_ros_nightly_overlay.Dockerfile.em
FROM osrf/ros2:nightly-rmw

ENV RTI_NC_LICENSE_ACCEPTED yes

# bootstrap rosdep
RUN rosdep update --rosdistro $ROS_DISTRO

# install dependencies
RUN . /opt/ros/$ROS_DISTRO/setup.sh \
    && apt-get update \
    && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      " \
    && rm -rf /var/lib/apt/lists/*


# set up environment
ENV NDDSHOME /opt/rti.com/rti_connext_dds-5.3.1
ENV PATH "$NDDSHOME/bin":$PATH
ENV LD_LIBRARY_PATH "$NDDSHOME/lib/x64Linux3gcc5.4.0":$LD_LIBRARY_PATH
