# This is an auto generated Dockerfile for gazebo:gzweb11
# generated from docker_images/create_gzweb_image.Dockerfile.em
FROM gazebo:libgazebo11-bionic

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
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

# label gazebo packages
LABEL sha256.libgazebo11-dev=a6663fdb1cbbb1ef38cb07ca486e6dbf5e0ef29af013794b995d6157f5230a5f

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo11-dev=11.1.0-1* \
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
