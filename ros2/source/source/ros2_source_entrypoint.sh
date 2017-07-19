#!/bin/bash
set -e

# setup ros2 environment
echo "export ROS_SECURITY_ROOT_DIRECTORY=$ROS2_WS/demo_keys" >> ~/.bashrc
echo "export ROS_SECURITY_ENABLE=true" >> ~/.bashrc
echo "export ROS_SECURITY_STRATEGY=Enforce" >> ~/.bashrc
echo "export RMW_IMPLEMENTATION=rmw_fastrtps_cpp" >> ~/.bashrc
echo "source $ROS2_WS/install_isolated/local_setup.bash" >> ~/.bashrc

exec "$@"
