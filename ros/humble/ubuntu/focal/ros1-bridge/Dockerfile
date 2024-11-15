# Adapted from ros/foxy/ubuntu/focal/ros1-bridge/Dockerfile

# Usage:
#   docker build . -t ros:humble-ros1-bridge-focal

FROM ros:humble-ros-core-focal as base

# install ros1 packages
RUN set -eux; \
       key='C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654'; \
       export GNUPGHOME="$(mktemp -d)"; \
       gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; \
       mkdir -p /usr/share/keyrings; \
       gpg --batch --export "$key" > /usr/share/keyrings/ros1-latest-archive-keyring.gpg; \
       gpgconf --kill all; \
       rm -rf "$GNUPGHOME"

# setup sources.list
RUN echo "deb [ signed-by=/usr/share/keyrings/ros1-latest-archive-keyring.gpg ] http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-ros-core=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/*

ENV ROS1_INSTALL_PATH=/opt/ros/noetic

FROM base as final

# The path or URL to the VCS repos.
ARG VCS_MSG_FILE="custom_msgs.repos"
# Which packages to build
ARG CUSTOM_MSG_PKGS="mavros_msgs"


WORKDIR /ws
RUN rm -rf src/* build install log
# This COPY is only necessary if you have a local file.
# If it's in a repo, comment this out and supply it as a build arg.
COPY $VCS_MSG_FILE .
RUN vcs import --input $VCS_MSG_FILE src
# Custom messages may have dependencies.
# Ignore any errors to keep it simple.
RUN apt-get update && \
    rosdep update && \
    rosdep install --from-paths src --ignore-src -y -r --skip-keys \
        "fastcdr rti-connext-dds-6.0.1 urdfdom_headers"
# Build all custom messge packages here in the right order.
RUN . /opt/ros/humble/setup.sh && colcon build --packages-up-to ${CUSTOM_MSG_PKGS} 

# Source the local workspace then build just the rosbridge.
# This links to all the other message packages at build time.
# Order of sourcing is VERY picky and NOT clear in the rosbridge README.
# https://github.com/ros2/ros1_bridge?tab=readme-ov-file#building-the-bridge-from-source
RUN . /opt/ros/noetic/setup.sh && . /opt/ros/humble/setup.sh && . install/setup.sh && colcon build --packages-select ros1_bridge

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]

