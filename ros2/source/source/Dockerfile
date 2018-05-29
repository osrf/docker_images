# This is an auto generated Dockerfile for ros2:source
# generated from docker_images/create_ros2_source_image.Dockerfile.em
FROM ubuntu:xenial

# install packages
RUN apt-get update && apt-get install -q -y \
    bash-completion \
    build-essential \
    clang-format \
    cmake \
    cppcheck \
    dirmngr \
    git \
    gnupg2 \
    libasio-dev \
    libcurl4-openssl-dev \
    libeigen3-dev \
    libgles2-mesa-dev \
    libglu1-mesa-dev \
    libopencv-dev \
    libpoco-dev \
    libpocofoundation9v5 \
    libpocofoundation9v5-dbg \
    libqt5core5a \
    libqt5gui5 \
    libqt5opengl5 \
    libqt5widgets5 \
    libssl-dev \
    libtinyxml-dev \
    libtinyxml2-dev \
    libxaw7-dev \
    lsb-release \
    openssl \
    pydocstyle \
    pyflakes \
    python-empy \
    python3-coverage \
    python3-dev \
    python3-empy \
    python3-mock \
    python3-nose \
    python3-pep8 \
    python3-pip \
    python3-pyparsing \
    python3-setuptools \
    python3-yaml \
    qtbase5-dev \
    uncrustify \
    wget \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://repo.ros2.org/$ID/main `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# install packages from the ROS repositories
RUN apt-get update && apt-get install -y --no-install-recommends \
    libopensplice67 \
    python3-vcstool \
    && rm -rf /var/lib/apt/lists/*

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
    pytest \
    pytest-cov \
    pytest-runner

# clone source
ENV ROS2_WS /root/ros2_ws
RUN mkdir -p $ROS2_WS/src
WORKDIR $ROS2_WS
RUN wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos \
    && vcs import src < ros2.repos

# build source
WORKDIR $ROS2_WS
RUN src/ament/ament_tools/scripts/ament.py \
    build \
    --build-tests \
    --cmake-args -DSECURITY=ON -- \
    --isolated \
    --parallel \
    --symlink-install

# setup bashrc
RUN cp /etc/skel/.bashrc ~/

# setup entrypoint
COPY ./ros2_source_entrypoint.sh /

ENTRYPOINT ["/ros2_source_entrypoint.sh"]
CMD ["bash"]
