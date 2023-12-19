# This is an auto generated Dockerfile for gazebo:gzserver11
# generated from docker_images/create_gzserver_image.Dockerfile.em
FROM ubuntu:focal

# setup timezone
RUN echo 'Etc/UTC' > /etc/timezone && \
    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    apt-get update && \
    apt-get install -q -y --no-install-recommends tzdata && \
    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*


# setup keys
RUN set -eux; \
	key='D2486D2DD83DB69272AFE98867170598AF249743'; \
	export GNUPGHOME="$(mktemp -d)"; \
	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; \
	mkdir -p /usr/share/keyrings; \
	gpg --batch --export "$key" > /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg; \
	gpgconf --kill all; \
	rm -rf "$GNUPGHOME"

# setup sources.list
RUN . /etc/os-release \
    && echo "deb [ signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg ] http://packages.osrfoundation.org/gazebo/$ID-stable $VERSION_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gazebo11=11.14.0-1* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
EXPOSE 11345

# setup entrypoint
COPY ./gzserver_entrypoint.sh /

ENTRYPOINT ["/gzserver_entrypoint.sh"]
CMD ["gzserver"]
