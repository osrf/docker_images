#!/bin/bash
set -e

# setup ros1 environment
source "/opt/ros/$ROS_DISTRO/setup.bash"

# setup ros2 environment
source "/opt/ros/$ROS2_DISTRO/setup.bash"
exec "$@"
