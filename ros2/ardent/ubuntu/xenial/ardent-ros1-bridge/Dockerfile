# This is an auto generated Dockerfile for ros2:ardent-ros1-bridge
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:ardent-full
# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-ardent-ros1-bridge \
    ros-ardent-turtlebot2* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros1_bridge_entrypoint.sh /

ENTRYPOINT ["/ros1_bridge_entrypoint.sh"]
CMD ["bash"]
