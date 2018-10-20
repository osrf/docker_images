#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/nightly/local_setup.bash"
exec "$@"
