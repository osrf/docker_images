# This is an auto generated Dockerfile for gazebo:gzserver9
# generated from docker_images/create_gzserver_image.Dockerfile.em
FROM ubuntu:xenial

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN . /etc/os-release \
    && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list

# label gazebo packages
LABEL org.osrfoundation.gazebo9.sha256=0b063ce0ce0fc2e6edc5a7faa6c988a6eb1d418840572cf3d3f75b6f21f5c078

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo9=9.15.0-3* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserver_entrypoint.sh /

ENTRYPOINT ["/gzserver_entrypoint.sh"]
CMD ["gzserver"]
