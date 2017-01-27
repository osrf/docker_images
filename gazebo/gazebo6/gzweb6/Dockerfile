# This is an auto generated Dockerfile for gazebo:gzweb6
# generated from templates/docker_images/create_gzweb_image.Dockerfile.em
# generated on 2017-01-27 19:23:08 +0000
FROM gazebo:libgazebo6

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
    psmisc\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo6-dev=6.7.0* \
    && rm -rf /var/lib/apt/lists/*

# clone gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb

# build gzweb
RUN cd ~/gzweb \
    && hg up default \
    && ./deploy.sh -m

# setup environment
EXPOSE 8080
EXPOSE 7681

# run gzserver and gzweb
CMD ./root/gzweb/start_gzweb.sh && gzserver
