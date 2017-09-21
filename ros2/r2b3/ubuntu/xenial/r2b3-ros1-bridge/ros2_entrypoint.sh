#!/bin/bash
set -e

# setup ros1 envrionment
source "/opt/ros/kinetic/setup.bash"

# setup ros1_bridge environment
source "/opt/ros/$ROS2_DISTRO/share/ros1_bridge/local_setup.bash"
exec "$@"
