# This is an auto generated Dockerfile for gazebo:gzclient5
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-05-19 19:19:05 -0700
FROM gazebo:gzserver5
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# Intall some basic GUI and sound libs
RUN apt-get install -y \
		xz-utils \
        file \
        locales \
        dbus-x11 \
        pulseaudio \
        dmz-cursor-theme \
		fonts-dejavu \
        fonts-liberation \
        hicolor-icon-theme \
		libcanberra-gtk3-0 \
        libcanberra-gtk-module \
        libcanberra-gtk3-module \
		libasound2 \
        libgtk2.0-0 \
        libdbus-glib-1-2 \
        libxt6 libexif12 \
		libgl1-mesa-glx \
        libgl1-mesa-dri \
    	terminator \
    	x-window-system \
    	binutils \
    	mesa-utils \
    	module-init-tools

#Fix for qt and X server errors
RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc \
    && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5

ENV nvidia_version=331.113
ENV "nvidia_driver_url=http://us.download.nvidia.com/XFree86/Linux-x86_64/331.113/NVIDIA-Linux-x86_64-331.113.run"
RUN nvidia_driver_uri=http://us.download.nvidia.com/XFree86/Linux-x86_64/${nvidia_version}/NVIDIA-Linux-x86_64-${nvidia_version}.run \
    && wget -O nvidia-driver.run $nvidia_driver_uri
ADD nvidia-driver.run /tmp/nvidia-driver.run
RUN sudo sh /tmp/nvidia-driver.run -a -N --ui=none --no-kernel-module \
	&& sudo rm /tmp/nvidia-driver.run

ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
