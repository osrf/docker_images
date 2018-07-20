# This is an auto generated Dockerfile for ros2:ros1-bridge
# generated from docker_images/create_ros2_image.Dockerfile.em
FROM osrf/ros2:bouncy-desktop
# install ros2 packages
RUN apt-get update && apt-get install -y \
    ros-bouncy-ros1-bridge \
    ros-bouncy-turtlebot2-demo \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros1_bridge_entrypoint.sh /

ENTRYPOINT ["/ros1_bridge_entrypoint.sh"]
CMD ["bash"]
