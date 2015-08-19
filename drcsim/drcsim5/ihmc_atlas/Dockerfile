# This is an auto generated Dockerfile for drcsim:drcsim5
# generated from templates/docker_images/create_drcsim_image.Dockerfile.em
# generated on 2015-08-14 18:12:52 -0700
FROM drcsim:drcsim5
MAINTAINER Nate Koenig nkoenig@osrfoundation.org

# install packages
RUN apt-get update && apt-get install -q -y \
    build-essential \
    git \
    openjdk-7-jdk \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install semantic_version

# Create catkin workspace
ENV WS /home/ws
RUN mkdir -p ${WS}/src && \
    git clone https://bitbucket.org/ihmcrobotics/ihmc_ros.git -b val_plugin_integration ${WS}/src/ihmc_ros

# Build catkin workspace
RUN . /usr/share/drcsim/setup.sh && \
    cd ${WS} && \
    catkin_make

# Download IHMC java code
RUN . ${WS}/devel/setup.sh && rosrun ihmc_atlas ihmc_dist_update.py

# setup entrypoint
COPY ./ihmc_atlas_entrypoint.bash /

ENTRYPOINT ["/ihmc_atlas_entrypoint.bash"]
CMD ["roslaunch ihmc_gazebo ihmc_atlas_standing.launch gzname:=gzserver"]
