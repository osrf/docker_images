# This is an auto generated Dockerfile for ros2:r2b2-bridge
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:r2b2-core

# install packages
RUN apt-get update && apt-get install -q -y \
    python-rospkg \
    && rm -rf /var/lib/apt/lists/*

# install ros packages
ENV ROS_DISTRO kinetic
RUN apt-get update && apt-get install -y \
    ros-kinetic-catkin \
    ros-kinetic-common-msgs \
    ros-kinetic-rosbash \
    ros-kinetic-roscpp \
    ros-kinetic-roscpp-tutorials \
    ros-kinetic-roslaunch \
    ros-kinetic-rosmsg \
    ros-kinetic-rospy-tutorials \
    ros-kinetic-tf2-msgs \
    && rm -rf /var/lib/apt/lists/*

