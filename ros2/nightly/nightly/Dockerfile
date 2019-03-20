# This is an auto generated Dockerfile for ros:nightly
# generated from docker_images_ros2/nightly/create_ros_image.Dockerfile.em
FROM ubuntu:bionic

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y \
    dirmngr \
    gnupg2 \
    lsb-release \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# setup ros2 keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-rosdep \
    python3-rosinstall \
    python3-vcstools \
    wget \
    && rm -rf /var/lib/apt/lists/*

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# bootstrap rosdep
RUN rosdep init \
    && rosdep update

# install python packages
RUN pip3 install -U \
    argcomplete

# install ros2 packages
ENV ROS_DISTRO crystal
RUN mkdir -p /opt/ros/$ROS_DISTRO
ARG ROS2_BINARY_URL=https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
RUN wget -q $ROS2_BINARY_URL -O - | \
    tar -xj --strip-components=1 -C /opt/ros/$ROS_DISTRO
RUN sed -i "s|^\(_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX\s*=\s*\).*$|\1/opt/ros/$ROS_DISTRO|" \
      /opt/ros/$ROS_DISTRO/setup.sh && \
    sed -i "s|^\(_colcon_prefix_sh_COLCON_CURRENT_PREFIX\s*=\s*\).*$|\1/opt/ros/$ROS_DISTRO|" \
      /opt/ros/$ROS_DISTRO/local_setup.sh

# ignore prerequisite rosdep keys
COPY prereqs.yaml /etc/ros/rosdep/
RUN echo "yaml file:///etc/ros/rosdep/prereqs.yaml" | \
    cat - /etc/ros/rosdep/sources.list.d/20-default.list > temp && \
    mv temp /etc/ros/rosdep/sources.list.d/20-default.list && \
    rosdep update

# install dependencies
RUN apt-get update && rosdep install -y \
      --from-paths /opt/ros/$ROS_DISTRO/share \
      --ignore-src \
      --skip-keys "\
        libopensplice69 \
        rti-connext-dds-5.3.1 "\
    && rm -rf /var/lib/apt/lists/*

# ignore installed rosdep keys
RUN . /opt/ros/$ROS_DISTRO/setup.sh && \
    ros2 pkg list | sed 's/$/: {ubuntu: []}/' > /etc/ros/rosdep/ros2.yaml && \
    echo "yaml file:///etc/ros/rosdep/ros2.yaml" | \
    cat - /etc/ros/rosdep/sources.list.d/20-default.list > temp && \
    mv temp /etc/ros/rosdep/sources.list.d/20-default.list && \
    rosdep update

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
