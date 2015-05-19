# This is an auto generated Dockerfile for gazebo:gzclient5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-06-30 16:19:09 -0700
FROM gazebo:gzserver5
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system\
    && rm -rf /var/lib/apt/lists/*

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5=5.1.0* \
    && rm -rf /var/lib/apt/lists/*

# setup environment
RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc \
    && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX

# install nvidia drivers
ADD nvidia-driver.run /tmp/nvidia-driver.run
RUN sh /tmp/nvidia-driver.run -a -N --ui=none --no-kernel-module \
	&& rm /tmp/nvidia-driver.run
