#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/$ROS2_DISTRO/setup.bash"
exec "$@"
