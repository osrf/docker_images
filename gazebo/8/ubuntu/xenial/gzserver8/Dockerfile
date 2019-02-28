# This is an auto generated Dockerfile for gazebo:gzserver8
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
RUN apt-get update \
    && . /etc/os-release \
    && echo "Release: Fri, 16 Nov 2018 16:26:55 UTC" \
    && export SUM=c69ce7a69a8b65d88037a1b0aa39ce76ab6355787751afe725a79eda512e5e02 \
    && export FILE=/var/lib/apt/lists/packages.osrfoundation.org_gazebo_$ID-stable_dists_$(lsb_release -sc)_InRelease \
    && echo "$SUM *$FILE" | sha256sum --check \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo8=8.6.0-1* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserver_entrypoint.sh /

ENTRYPOINT ["/gzserver_entrypoint.sh"]
CMD ["gzserver"]
