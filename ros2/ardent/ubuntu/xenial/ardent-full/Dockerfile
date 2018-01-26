# This is an auto generated Dockerfile for ros2:ardent-full
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:ardent-basic

# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-astra-camera \
    ros-ardent-cartographer-ros \
    ros-ardent-depthimage-to-laserscan \
    ros-ardent-depthimage-to-pointcloud2 \
    ros-ardent-dummy-map-server \
    ros-ardent-dummy-robot-bringup \
    ros-ardent-dummy-sensors \
    ros-ardent-image-tools \
    ros-ardent-intra-process-demo \
    ros-ardent-joy \
    ros-ardent-launch-testing \
    ros-ardent-map-server \
    ros-ardent-pcl-conversions \
    ros-ardent-pendulum-control \
    ros-ardent-robot-state-publisher \
    ros-ardent-rosidl-default-generators \
    ros-ardent-rviz2 \
    ros-ardent-rviz-default-plugins \
    ros-ardent-teleop-twist-joy \
    ros-ardent-teleop-twist-keyboard \
    && rm -rf /var/lib/apt/lists/*

