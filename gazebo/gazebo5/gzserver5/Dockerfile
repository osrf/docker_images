# This is an auto generated Dockerfile for gazebo:gzserver5
# generated from templates/docker_images/create_gzserver_image.Dockerfile.em
# generated on 2015-05-19 17:02:03 -0700
FROM ubuntu:trusty
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    wget

# setup keys
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -

# setup sources.list
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list

# install gazebo packages
RUN apt-get update && apt-get install -q -y \
    gazebo5

# setup environment
RUN echo "source /usr/share/gazebo/setup.sh" >> ~/.bashrc

EXPOSE 11345
ENTRYPOINT ["bash", "-c"]
CMD ["bash"]
