# OSRF Docker Images

This repo hosts Dockerfiles and scaffolding for images in the Official Library and OSRF Organization on Docker Hub.

## Table of Contents
[Official docker library](https://github.com/osrf/docker_images/blob/master/README.md#official-library)<br/>
[Official ROS (1 and 2) images](https://github.com/osrf/docker_images/blob/master/README.md#ros--)<br/>
[Official Gazebo images](https://github.com/osrf/docker_images/blob/master/README.md#gazebo--)<br/>
[OSRF ROS (1 and 2) overlay images](https://github.com/osrf/docker_images/blob/master/README.md#ros---1)<br/>
[OSRF ROS 2 development images](https://github.com/osrf/docker_images/blob/master/README.md#ros2--)<br/>
[OSRF Gazebo overlay images](https://github.com/osrf/docker_images/blob/master/README.md#gazebo---1)<br/>
[OSRF ROS Legacy images](https://github.com/osrf/docker_images/blob/master/README.md#ros-legacy--)<br/>

| CI | Status |
|---|---|
| ROS | [![Build Status](https://github.com/osrf/docker_images/workflows/CI%20ROS%20images/badge.svg?branch=master)](https://github.com/osrf/docker_images/actions?query=workflow%3A%22CI+ROS+images%22+event%3Aschedule)
| ROS 2 | [![Build Status](https://github.com/osrf/docker_images/workflows/CI%20ROS%202%20images/badge.svg?branch=master)](https://github.com/osrf/docker_images)
| Gazebo | [![Build Status](https://github.com/osrf/docker_images/workflows/CI%20Gazebo%20images/badge.svg?branch=master)](https://github.com/osrf/docker_images/actions?query=workflow%3A%22CI+Gazebo+images%22+event%3Aschedule)

---

## [Official Library](https://docs.docker.com/docker-hub/official_images)

The following repos are hosted under the Official Library on Docker Hub. These images are tagged for production and general downstream use. If you’re targeting released versions of respective projects, then these are recommended.

### [ROS ![Docker Pulls](https://img.shields.io/docker/pulls/_/ros.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/_/ros.svg?label=stars)](https://hub.docker.com/_/ros)

This repo contains images available for ROS, both ROS 1 and ROS 2.
For more documentation on using these images, view the Docker Hub repo link above.
Images are tagged by distribution name, meta package, as well as code name for supported OS base images.
For complete listing of tag, view the Repo Info link below.

This repo also contain images for the [ROS 2 Rolling Ridley distribution](https://www.ros.org/reps/rep-2002.html), this distribution is a rolling release providing the latest bleeding edge packages available via apt. Note that these will be updated regularly and may jump base image without notice.
It sits nicely between the official ROS distributions and the [nightly images](https://github.com/osrf/docker_images#repo-info-3).

#### [Repo Info](https://github.com/docker-library/repo-info/tree/master/repos/ros)

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/amd64/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/amd64/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/amd64/job/ros/) |
| [arm32v7](https://hub.docker.com/r/arm32v7/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm32v7/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/arm32v7/job/ros/) |
| [arm64v8](https://hub.docker.com/r/arm64v8/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm64v8/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/arm64v8/job/ros/) |

### [Gazebo ![Docker Pulls](https://img.shields.io/docker/pulls/_/gazebo.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/_/gazebo.svg?label=stars)](https://hub.docker.com/_/gazebo)

This repo contains images available for Gazebo.
For more documentation on using these images, view the Docker Hub repo link above.
Images are tagged by releases version, meta package, as well as code name for supported OS base images.
For complete listing of tag, view the Repo Info link below.

#### [Repo Info](https://github.com/docker-library/repo-info/tree/master/repos/gazebo)

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/amd64/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/amd64/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/amd64/job/gazebo/) |
<!--
| [arm32v7](https://hub.docker.com/r/arm32v7/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm32v7/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/arm32v7/job/gazebo/) |
| [arm64v8](https://hub.docker.com/r/arm64v8/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm64v8/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/arm64v8/job/gazebo/) |
-->

---

## [OSRF Profile](https://hub.docker.com/u/osrf/)

The following repos are hosted under the OSRF Organization on Docker Hub.
These images are tagged for development and advanced use cases.
If you require extra dependencies not available from the Official Library images above, then using these images may help save you build time during continuous integration or local development.

### [ROS ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros.svg?label=stars)](https://hub.docker.com/r/osrf/ros/)

This repo builds ROS (both ROS 1 and ROS 2) images `FROM` the Official Library by including additional meta-packages such for desktop installations.
These images may be helpful using containers for development or when display forwarding when using GUIs.<br/>
Images must be pulled using an explicit tag e.g:
```
docker pull osrf/ros:<tag_name>
```
List of tags available at https://hub.docker.com/r/osrf/ros/tags

#### Repo Info

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/osrf/ros/tags) | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros.svg?label=build)](https://hub.docker.com/r/osrf/ros/builds/) |

### [ROS2 ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros2.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros2.svg?label=stars)](https://hub.docker.com/r/osrf/ros2/)

This repo contains images specific to ROS 2, and are particularly for development and continuous integration.
These may contain experimental features or unstable interfaces for testing the latest ROS 2 branches.<br/>
Images must be pulled using an explicit tag e.g:
```
docker pull osrf/ros2:<tag_name>
```
List of tags available at https://hub.docker.com/r/osrf/ros2/tags

#### Repo Info

- [`testing`](ros2/testing/testing)
  - _Description:_
    - closely mimics the Official Library images but sources testing apt repo
    - minimal size with no `ros-rolling-*` packages pre-installed
  - _Purpose:_
    - intended for Continuous Integration and testing package syncs
    - small image size and kept fresh by rebuilding upon package updates
- [`nightly`](ros2/nightly/nightly)
  - _Description:_
    - includes pre-installed environment from nightly job on the ci.ros2.org and pre-installed DDS implementations:
      - Fast-RTPS (default)
      - CycloneDDS
    - closely mimics the Official Library images as be interchangeable
  - _Purpose:_
    - intended for CI and testing against the latest nightly builds
    - early detection of regressions or deprecation from upstream
- [`nightly-rmw`](ros2/nightly/nightly-rmw)
  - _Description:_
    - builds `FROM` `nightly` and installs open source libraries
    - currently identical to `nightly`
  - _Purpose:_
    - intended for CI and testing against more rmw implementations
- [`nightly-rmw-nonfree`](ros2/nightly/nightly-rmw-nonfree)
  - _Description:_
    - builds `FROM` `nightly-rmw` and installs closed source libraries
    - including non free vendors:
      - Connext
  - **Notice:**
    - includes third party license agreements for non free software
    - including the [`Open Community Source`](https://www.rti.com/products/pricing/compare) license from RTI
- [`devel`](ros2/source/devel)
  - _Description:_
    - includes pre-installed dependencies for building from source
    - closely mimics the source install setup instructions 
  - _Purpose:_
    - intended for development and bootstrapping source builds
    - small image size and kept fresh by rebuilding every day
- [`source`](ros2/source/source)
  - _Description:_
    - builds `FROM` `devel` and compiles ros2 from source
    - closely mimics the Official Library images as be interchangeable
  - _Purpose:_
    - intended for development and bootstrapping source builds
    - when an isolated workspace is needed for dependency checking
  - **Notice:**
    - no pre-built image hosted on Docker Hub
    - provides many `ARG` options, like running tests
- Note: only core packages are available via these images. An alternative for development is to use the [rolling distribution images](https://github.com/osrf/docker_images#ros--), while less recent than the nightly they allow you to install many ROS packages from deb.

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros2.svg?label=build)](https://hub.docker.com/r/osrf/ros2/builds/) |

### [Gazebo ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/gazebo.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/gazebo.svg?label=stars)](https://hub.docker.com/r/osrf/gazebo/)

This repo builds `FROM` the Official Library by including additional meta-packages such for desktop installations.
These images may be helpful using containers for development or when display forwarding when using GUIs.<br/>
Images must be pulled using an explicit tag e.g:
```
docker pull osrf/gazebo:<tag_name>
```
List of tags available at https://hub.docker.com/r/osrf/gazebo/tags

#### Repo Info

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/gazebo.svg?label=build)](https://hub.docker.com/r/osrf/gazebo/builds/) |

### [ROS Legacy ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros_legacy.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros_legacy.svg?label=stars)](https://hub.docker.com/r/osrf/ros_legacy/)

This repo contains legacy images for ROS 1, specifically for releases predating the Official Library.
This is intended as a complementary repo only for older releases of ROS that were not archived in the Official Library.
Images must be pulled using an explicit tag e.g:
```
docker pull osrf/ros_legacy:<tag_name>
```
List of tags available at https://hub.docker.com/r/osrf/ros_legacy/tags

#### Repo Info

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros_legacy.svg?label=build)](https://hub.docker.com/r/osrf/ros_legacy/builds/) |
