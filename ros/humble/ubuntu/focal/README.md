# Instructions

```bash
# Build ROS 2 humble from source in a focal container
cd ros-core
docker build . -t ros:humble-ros-core-focal

# Install ROS 1 binaries and then build the rosbridge with colcon.
cd ../ros1-bridge
docker build . -t ros:humble-ros1-bridge-focal
dit ros:humble-ros1-bridge-focal
echo $CMAKE_PREFIX_PATH
echo $ROS1_INSTALL_PATH
echo $ROS2_INSTALL_PATH

source ${ROS1_INSTALL_PATH}/setup.bash
# Now, source your local workspace with your messages
source install/setup.bash # Assume this sources /opt/ros/humble underlay
# You should see standard ROS message packages and your custom ones below.
ros2 pkg list | grep msgs
```