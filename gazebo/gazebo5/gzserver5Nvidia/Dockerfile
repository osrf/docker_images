# This is an auto generated Dockerfile for gazebo:gzserver5-nvidia
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver5
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    binutils \
    mesa-utils \
    module-init-tools \
    x-window-system

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5

# setup environment
RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc \
    && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX

# install nvidia drivers
ADD nvidia-driver.run /tmp/nvidia-driver.run
RUN sh /tmp/nvidia-driver.run -a -N --ui=none --no-kernel-module \
	&& rm /tmp/nvidia-driver.run

ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
