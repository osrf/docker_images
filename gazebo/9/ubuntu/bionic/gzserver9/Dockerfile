# This is an auto generated Dockerfile for gazebo:gzserver9
# generated from docker_images/create_gzserver_image.Dockerfile.em
FROM ubuntu:bionic

RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*


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
    && echo "Release: Mon, 05 Nov 2018 18:49:39 UTC" \
    && export SUM=3c94e1c056520e06ba10d425c883463b3287c6eb506d410e6c939739ee301c92 \
    && export FILE=/var/lib/apt/lists/packages.osrfoundation.org_gazebo_$ID-stable_dists_$(lsb_release -sc)_InRelease \
    && echo "$SUM *$FILE" | sha256sum --check \
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo9=9.4.1-1* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserver_entrypoint.sh /

ENTRYPOINT ["/gzserver_entrypoint.sh"]
CMD ["gzserver"]
