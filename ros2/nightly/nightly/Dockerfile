# multi-stage for setup
FROM ubuntu:focal-20220105 as setuper
ARG DEBIAN_FRONTEND=noninteractive

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    bash-completion \
    cmake \
    dirmngr \
    git \
    gnupg2 \
    libssl-dev \
    lsb-release \
    python3-pip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# setup sources.list
RUN echo "deb http://packages.ros.org/ros2-testing/ubuntu focal main" > /etc/apt/sources.list.d/ros2-testing.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    git \
    python3-colcon-common-extensions \
    python3-colcon-mixin \
    python3-rosdep \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

# setup environment
ENV ROS_DISTRO rolling
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROSDISTRO_INDEX_URL https://raw.githubusercontent.com/osrf/docker_images/master/ros2/nightly/nightly/index-v4.yaml

# install python packages
RUN pip3 install -U \
    argcomplete \
    flake8 \
    flake8-blind-except \
    flake8-builtins \
    flake8-class-newline \
    flake8-comprehensions \
    flake8-deprecated \
    flake8-docstrings \
    flake8-import-order \
    flake8-quotes \
    pytest-repeat \
    pytest-rerunfailures
# This is a workaround for pytest not found causing builds to fail
# Following RUN statements tests for regression of https://github.com/ros2/ros2/issues/722
RUN pip3 freeze | grep pytest \
    && python3 -m pytest --version

# setup colcon mixin and metadata
RUN colcon mixin add default \
      https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml && \
    colcon mixin update && \
    colcon metadata add default \
      https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml && \
    colcon metadata update

# bootstrap rosdep
RUN rosdep init

# add custom rosdep rule files
COPY prereqs.yaml /etc/ros/rosdep/
RUN echo "yaml file:///etc/ros/rosdep/prereqs.yaml" | \
    cat - /etc/ros/rosdep/sources.list.d/20-default.list > temp && \
    mv temp /etc/ros/rosdep/sources.list.d/20-default.list
RUN rosdep update

# multi-stage for caching
FROM setuper AS cacher
ARG TIMESTAMP

# install ros2 packages
RUN mkdir -p /opt/ros/$ROS_DISTRO
ARG ROS2_BINARY_URL=https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
RUN wget -q $ROS2_BINARY_URL -O - | \
    tar -xj --strip-components=1 -C /opt/ros/$ROS_DISTRO

# Overwriting _colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX to point to the new install location
# Necessary because the default value is an absolute path valid only on the build machine
RUN sed -i "s|^\(_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX\s*=\s*\).*$|\1/opt/ros/$ROS_DISTRO|" \
      /opt/ros/$ROS_DISTRO/setup.sh

# copy manifests for caching
WORKDIR /opt/ros
RUN mkdir -p /tmp/opt/ros/$ROS_DISTRO && \
    find . -name "package.xml" \
      | xargs cp --parents -t /tmp/opt/ros


# multi-stage for nightly
FROM setuper AS nightly
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
COPY --from=cacher /tmp/opt/ros/$ROS_DISTRO /opt/ros/$ROS_DISTRO
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      cyclonedds \
      rti-connext-dds-5.3.1" \
    && rm -rf /var/lib/apt/lists/*

# install nightly
COPY --from=cacher /opt/ros/$ROS_DISTRO /opt/ros/$ROS_DISTRO

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]


# multi-stage for nightly-rmw
FROM nightly AS nightly-rmw
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      rti-connext-dds-5.3.1" \
    && rm -rf /var/lib/apt/lists/*


# multi-stage for nightly-rmw-nonfree
FROM nightly-rmw AS nightly-rmw-nonfree
ARG DEBIAN_FRONTEND=noninteractive

# install dependencies
ARG RTI_NC_LICENSE_ACCEPTED=yes
RUN apt-get update && rosdep install -y \
    --from-paths /opt/ros/$ROS_DISTRO/share \
    --ignore-src \
    --skip-keys " \
      " \
    && rm -rf /var/lib/apt/lists/*

# set up environment
ENV NDDSHOME /opt/rti.com/rti_connext_dds-5.3.1
ENV PATH "$NDDSHOME/bin":$PATH
ENV LD_LIBRARY_PATH "$NDDSHOME/lib/x64Linux3gcc5.4.0":$LD_LIBRARY_PATH
