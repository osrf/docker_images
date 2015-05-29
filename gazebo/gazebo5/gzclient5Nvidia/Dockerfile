# This is an auto generated Dockerfile for gazebo:gzclient5-nvidia
# generated from templates/docker_images/create_gzclient_image.Dockerfile.em
# generated on 2015-05-28 17:20:52 -0700
FROM gazebo:gzserver5-nvidia
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5

# setup environment
RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc \
    && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX

EXPOSE 11345
ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
