# This is an auto generated Dockerfile for gazebo:gzweb5
# generated from templates/docker_images/create_gzweb_image.Dockerfile.em
# generated on 2015-05-19 17:02:03 -0700
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
RUN hg clone https://bitbucket.org/osrf/gzweb ~/gzweb

# build gzweb
RUN cd ~/gzweb \
    && hg up default \
    && ./deploy.sh -m

EXPOSE 8080
EXPOSE 7681
ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
