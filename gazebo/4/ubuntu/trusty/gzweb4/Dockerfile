# This is an auto generated Dockerfile for gazebo:gzweb4
# generated from docker_images/create_gzweb_image.Dockerfile.em
FROM gazebo:libgazebo4-trusty

# install packages
RUN apt-get update && apt-get install -q -y \
    build-essential \
    cmake \
    imagemagick \
    libboost-all-dev \
    libgts-dev \
    libjansson-dev \
    libtinyxml-dev \
    mercurial \
    nodejs \
    nodejs-legacy \
    npm \
    pkg-config \
    psmisc \
    xvfb \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo4-dev=4.1.3-1* \
    && rm -rf /var/lib/apt/lists/*

# clone gzweb
ENV GZWEB_WS /root/gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb $GZWEB_WS
WORKDIR $GZWEB_WS

# build gzweb
RUN hg up default \
    && xvfb-run -s "-screen 0 1280x1024x24" ./deploy.sh -m -t

# setup environment
EXPOSE 8080
EXPOSE 7681

# run gzserver and gzweb
CMD gzserver --verbose & npm start
