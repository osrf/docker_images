#!/bin/bash
set -e

# setup ros2 environment
source "$ROS2_WS/install_isolated/local_setup.bash"
exec "$@"
