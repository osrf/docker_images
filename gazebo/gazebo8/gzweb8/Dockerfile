# This is an auto generated Dockerfile for gazebo:gzweb8
# generated from templates/docker_images/create_gzweb_image.Dockerfile.em
# generated on 2017-06-08 00:05:04 +0000
FROM gazebo:libgazebo8

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
    xvfb\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo8-dev=8.1.1-1* \
    && rm -rf /var/lib/apt/lists/*

# clone gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb

# build gzweb
RUN cd ~/gzweb \
    && hg up default \
    && xvfb-run -s "-screen 0 1280x1024x24" ./deploy.sh -m

# setup environment
EXPOSE 8080
EXPOSE 7681

# run gzserver and gzweb
CMD ./root/gzweb/start_gzweb.sh && gzserver
