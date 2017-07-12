#!/bin/bash
set -e

# setup ros environment
export ROS_SECURITY_ROOT_DIRECTORY=$ROS2_WS/demo_keys
export ROS_SECURITY_ENABLE=true
export ROS_SECURITY_STRATEGY=Enforce
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
source $ROS2_WS/src/install_isolated/local_setup.bash

exec "$@"
