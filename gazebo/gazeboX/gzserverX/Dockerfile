# This is an auto generated Dockerfile for gazebo:gzserverX
# generated from templates/docker_images/create_gzserverX_image.Dockerfile.em
# generated on 2016-04-26 23:20:27 +0000
FROM ubuntu:trusty
MAINTAINER Steven Peters scpeters+buildfarm@osrfoundation.org

RUN apt-get update && apt-get install -y \
    software-properties-common  \
    && rm -rf /var/lib/apt/lists/*

RUN apt-add-repository ppa:libccd-debs \
    && apt-add-repository ppa:fcl-debs \
    && apt-add-repository ppa:dartsim


# Gazebo Setup #################################################################
# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libbullet2.82-dev \
    libsimbody-dev \
    libignition-math2-dev \
    && rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y \
    build-essential \
    cmake \
    curl \
    freeglut3-dev \
    git \
    libassimp-dev \
    libavcodec-dev \
    libavformat-dev \
    libboost-all-dev \
    libfcl-dev \
    libccd-dev \
    libcegui-mk2-dev \
    libcurl4-openssl-dev \
    libeigen3-dev \
    libflann-dev \
    libfreeimage-dev \
    libgts-dev \
    libltdl3-dev \
    libogre-1.8-dev \
    libopenal-dev \
    libprotobuf-dev \
    libprotoc-dev \
    libqt4-dev \
    libswscale-dev \
    libtar-dev \
    libtbb-dev \
    libtinyxml-dev \
    libtinyxml2-dev \
    libxi-dev \
    libxml2-dev \
    libxmu-dev \
    liburdfdom-dev \
    liburdfdom-headers-dev \
    mercurial \
    pkg-config \
    playerc++ \
    protobuf-compiler \
    python-pip \
    libdart-core4-dev \
    libbullet2.82-dev \
    libsimbody-dev \
    ruby-dev \
    && rm -rf /var/lib/apt/lists/*

# install python packages
RUN pip install \
    catkin-pkg \
    catkin-tools \
    empy

# clone source
RUN mkdir -p /root/ws/gazeboX/src
WORKDIR /root/ws/gazeboX/src
RUN git clone https://github.com/ros/catkin.git catkin --branch  indigo-devel 
RUN hg clone https://bitbucket.org/osrf/sdformat sdformat --branch  default  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_sdformat.xml > /root/ws/gazeboX/src/sdformat/package.xml
RUN hg clone https://bitbucket.org/osrf/gazebo gazebo --branch  default  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_gazebo.xml > /root/ws/gazeboX/src/gazebo/package.xml

# build source
WORKDIR /root/ws/gazeboX
RUN catkin init \
    && catkin build \
    -vi \
    --cmake-args \
    -DCMAKE_BUILD_TYPE=Debug

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserverX_entrypoint.sh /

ENTRYPOINT ["/gzserverX_entrypoint.sh"]
CMD ["gzserver"]
