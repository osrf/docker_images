# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:bouncy-ros-base-bionic

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

ENV ROS1_DISTRO melodic
ENV ROS2_DISTRO bouncy
# label ros packages
LABEL sha256.ros-melodic-ros-comm=a0fca5a04686610280d507c61b76c956a7acada71255910b7b9b47bf44a375dc

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-comm=1.14.9-1* \
    && rm -rf /var/lib/apt/lists/*

# label ros2 packages
LABEL sha256.ros-bouncy-ros1-bridge=013afb2862eb12001edb41d47b47f1688b138ba72652cf643124afc0a98eaf6f

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-bouncy-ros1-bridge=0.5.1-0* \
    && rm -rf /var/lib/apt/lists/*

# setup entrypoint
COPY ./ros_entrypoint.sh /

