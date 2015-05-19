# This is an auto generated Dockerfile for gazebo:gzweb5
# generated from templates/docker_images/create_gzweb_image.Dockerfile.em
# generated on 2015-05-18 18:46:20 -0700
FROM gazebo:gzserver5
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

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
    psmisc

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    libgazebo5-dev

# clone gzweb
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb \
    && cd ~/gzweb \
    && hg up default \
    && ./deploy.sh -m local

EXPOSE 8080
ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
