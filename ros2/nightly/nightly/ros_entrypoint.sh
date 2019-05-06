#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/nightly/setup.bash"
exec "$@"
