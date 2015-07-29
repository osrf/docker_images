#!/bin/bash
set -e

# setup ros environment
source "/root/ros2_ws/install/local_setup.bash"
exec "$@"
