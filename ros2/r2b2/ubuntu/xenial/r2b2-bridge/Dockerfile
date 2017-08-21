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
    ros-kinetic-catkin=0.7.6-0* \
    ros-kinetic-common-msgs=1.12.5-0* \
    ros-kinetic-rosbash=1.13.5-0* \
    ros-kinetic-roscpp=1.12.7-0* \
    ros-kinetic-roscpp-tutorials=0.7.1-0* \
    ros-kinetic-roslaunch=1.12.7-0* \
    ros-kinetic-rosmsg=1.12.7-0* \
    ros-kinetic-rospy-tutorials=0.7.1-0* \
    ros-kinetic-tf2-msgs=0.5.16-0* \
    && rm -rf /var/lib/apt/lists/*

