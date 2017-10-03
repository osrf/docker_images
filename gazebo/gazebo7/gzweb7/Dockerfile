# This is an auto generated Dockerfile for gazebo:gzweb7
# generated from docker_images/create_gzweb_image.Dockerfile.em
FROM gazebo:libgazebo7

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
    pkg-config \
    psmisc \
    xvfb\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo7-dev=7.8.1-1* \
    && rm -rf /var/lib/apt/lists/*

# clone gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb

# install nvm and node
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 6.1.0
RUN . /root/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm use $NODE_VERSION
ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# build gzweb
RUN cd ~/gzweb \
    && hg up default \
    && npm run deploy

# setup environment
EXPOSE 8080
EXPOSE 7681

# run gzserver and gzweb
CMD cd /root/gzweb && npm start &
CMD gzserver
