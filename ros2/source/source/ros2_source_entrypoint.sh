#!/bin/bash
set -e

# setup ros2 environment
source "$ROS2_WS/install/prefix.bash"
exec "$@"
