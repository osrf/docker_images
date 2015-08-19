# OSRF Docker Images
This repo hosts the Dockerfiles used to generate the official images for OSRF projects, including onbuild repositories on Docker Hub:

### Official Library
#### [ROS](https://registry.hub.docker.com/_/ros/)
-	[`indigo-ros-core` (*ros/indigo/indigo-ros-core/Dockerfile*)](https://github.com/osrf/docker_images/blob/8a11109079636bcd3bdf341993d39e2b7d503c6c/ros/indigo/indigo-ros-core/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:indigo-ros-core.svg)](https://imagelayers.io/?images=ros:indigo-ros-core 'Get your own badge on imagelayers.io')
-	[`indigo-ros-base`, `indigo`, `latest` (*ros/indigo/indigo-ros-base/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/indigo/indigo-ros-base/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:indigo-ros-base.svg)](https://imagelayers.io/?images=ros:indigo-ros-base 'Get your own badge on imagelayers.io')
-	[`indigo-robot` (*ros/indigo/indigo-robot/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/indigo/indigo-robot/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:indigo-robot.svg)](https://imagelayers.io/?images=ros:indigo-robot 'Get your own badge on imagelayers.io')
-	[`indigo-perception` (*ros/indigo/indigo-perception/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/indigo/indigo-perception/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:indigo-perception.svg)](https://imagelayers.io/?images=ros:indigo-perception 'Get your own badge on imagelayers.io')
-	[`jade-ros-core` (*ros/jade/jade-ros-core/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/jade/jade-ros-core/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:jade-ros-core.svg)](https://imagelayers.io/?images=ros:jade-ros-core 'Get your own badge on imagelayers.io')
-	[`jade-ros-base`, `jade` (*ros/jade/jade-ros-base/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/jade/jade-ros-base/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:jade-ros-base.svg)](https://imagelayers.io/?images=ros:jade-ros-base 'Get your own badge on imagelayers.io')
-	[`jade-robot` (*ros/jade/jade-robot/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/jade/jade-robot/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:jade-robot.svg)](https://imagelayers.io/?images=ros:jade-robot 'Get your own badge on imagelayers.io')
-	[`jade-perception` (*ros/jade/jade-perception/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/ros/jade/jade-perception/Dockerfile)
 -	[![](https://badge.imagelayers.io/ros:jade-perception.svg)](https://imagelayers.io/?images=ros:jade-perception 'Get your own badge on imagelayers.io')

#### [Gazebo](https://registry.hub.docker.com/_/gazebo/)
-	[`gzserver4` (*gazebo/gazebo4/gzserver4/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo4/gzserver4/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:gzserver4.svg)](https://imagelayers.io/?images=gazebo:gzserver4 'Get your own badge on imagelayers.io')
-	[`libgazebo4` (*gazebo/gazebo4/libgazebo4/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo4/libgazebo4/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:libgazebo4.svg)](https://imagelayers.io/?images=gazebo:libgazebo4 'Get your own badge on imagelayers.io')
-	[`gzserver5` (*gazebo/gazebo5/gzserver5/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo5/gzserver5/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:gzserver5.svg)](https://imagelayers.io/?images=gazebo:gzserver5 'Get your own badge on imagelayers.io')
-	[`libgazebo5` (*gazebo/gazebo5/libgazebo5/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo5/libgazebo5/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:libgazebo5.svg)](https://imagelayers.io/?images=gazebo:libgazebo5 'Get your own badge on imagelayers.io')
-	[`gzserver6` (*gazebo/gazebo6/gzserver6/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo6/gzserver6/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:gzserver6.svg)](https://imagelayers.io/?images=gazebo:gzserver6 'Get your own badge on imagelayers.io')
-	[`libgazebo6`, `latest` (*gazebo/gazebo6/libgazebo6/Dockerfile*)](https://github.com/osrf/docker_images/blob/master/gazebo/gazebo6/libgazebo6/Dockerfile)
 -	[![](https://badge.imagelayers.io/gazebo:libgazebo6.svg)](https://imagelayers.io/?images=gazebo:libgazebo6 'Get your own badge on imagelayers.io')


#### OSRF Profile
* [ROS](https://registry.hub.docker.com/u/osrf/ros/)
* [ROS2](https://registry.hub.docker.com/u/osrf/ros2/)
* [Gazebo](https://registry.hub.docker.com/u/osrf/gazebo/)

This repo also includes the necessary scripts and config files to auto generate the Dockerfiles. See the doc directory for further documentation.
