# This is an auto generated Dockerfile for gazebo:gzserver7
# generated from docker_images/create_gzserver_image.Dockerfile.em
FROM ubuntu:xenial

# install packages
RUN apt-get update && apt-get install -q -y \
    dirmngr \
    gnupg2 \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list

# break build cache for sync
RUN echo "Release: Fri, 09 Nov 2018 14:51:50 UTC" \
    && echo "Digest: 1b1a9870d531fcfee20ae1ab3df60d499d6b206c11fe30e3c89dd111ae31c756"

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo7=7.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserver_entrypoint.sh /

ENTRYPOINT ["/gzserver_entrypoint.sh"]
CMD ["gzserver"]
