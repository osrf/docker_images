# This is an auto generated Dockerfile for drcsim:drcsim5
# generated from templates/docker_images/create_drcsim_image.Dockerfile.em
# generated on 2015-08-18 15:49:18 -0700
FROM ros:indigo-ros-core
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743

# setup sources.list
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list


# install packages
RUN apt-get update && apt-get install -q -y \
    drcsim-prerelease\
    && rm -rf /var/lib/apt/lists/*


# setup entrypoint
COPY ./drcsim_entrypoint.sh /

ENTRYPOINT ["/drcsim_entrypoint.sh"]
CMD ["roslaunch drcsim_gazebo atlas.launch"]
