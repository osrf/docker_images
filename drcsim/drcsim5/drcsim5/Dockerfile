# This is an auto generated Dockerfile for drcsim:drcsim5
# generated from templates/docker_images/create_drcsim_image.Dockerfile.em
# generated on 2015-08-14 18:12:52 -0700
FROM gazebo:libgazebo4
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# ROS Setup ####################################################################
# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# setup keys
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list


# install packages
RUN apt-get update && apt-get install -q -y \
    drcsim-prerelease\
    && rm -rf /var/lib/apt/lists/*


# setup entrypoint
COPY ./drcsim_entrypoint.sh /

ENTRYPOINT ["/drcsim_entrypoint.sh"]
CMD ["roslaunch drcsim_gazebo atlas.launch"]
