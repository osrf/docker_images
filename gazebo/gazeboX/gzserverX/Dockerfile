# This is an auto generated Dockerfile for gazebo:gzserverX
# generated from templates/docker_images/create_gzserverX_image.Dockerfile.em
# generated on 2015-07-16 20:01:43 -0700
FROM ubuntu:trusty
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

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
    libccd-dev \
    libcegui-mk2-dev \
    libcurl4-openssl-dev \
    libeigen3-dev \
    libfcl-dev \
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
    && rm -rf /var/lib/apt/lists/*

    
# install python packages
RUN pip install \
    catkin-pkg \
    catkin-tools

# clone source
ENV WS /root/ws/gazeboX
RUN mkdir -p /root/ws/gazeboX/src
WORKDIR /root/ws/gazeboX/src
RUN git clone https://github.com/ros/catkin.git catkin --branch  master 
RUN git clone https://github.com/bulletphysics/bullet3.git bullet3 --branch  master  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_bullet.xml > ${WS}/src/bullet3/package.xml
RUN git clone https://github.com/dartsim/dart.git dart --branch  master  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_dart-core.xml > ${WS}/src/dart/package.xml
RUN hg clone https://bitbucket.org/osrf/sdformat sdformat --branch  default  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_sdformat.xml > ${WS}/src/sdformat/package.xml
RUN hg clone https://bitbucket.org/osrf/gazebo gazebo --branch  default  \
    && curl https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_gazebo.xml > ${WS}/src/gazebo/package.xml

# build source
RUN cd /root/ws/gazeboX \
    && catkin init \
    && catkin build \
    -vi \
    --cmake-args \
    -DBUILD_CORE_ONLY=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DUSE_DOUBLE_PRECISION=ON

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserverX_entrypoint.sh /

ENTRYPOINT ["/gzserverX_entrypoint.sh"]
CMD ["gzserver"]
