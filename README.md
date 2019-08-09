# OSRF Docker Images

This repo hosts Dockerfiles and scaffolding for images in the Official Library and OSRF Organization on Docker Hub.

| CI | Status |
|---|---|
| Travis | [![Build Status](https://travis-ci.org/osrf/docker_images.svg?branch=master)](https://travis-ci.org/osrf/docker_images) |

---

## [Official Library](https://docs.docker.com/docker-hub/official_images)

The following repos are hosted under the Official Library on Docker Hub. These images are tagged for production and general downstream use. If you’re targeting released versions of respective projects, then these are recommended.

### [ROS ![Docker Pulls](https://img.shields.io/docker/pulls/_/ros.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/_/ros.svg?label=stars)](https://hub.docker.com/_/ros)

This repo contains images available for ROS, both ROS 1 and ROS 2. For more documentation on using these images, view the Docker Hub repo link above. Images are tagged by distribution name, meta package, as well as code name for supported OS base images. For complete listing of tag, view the Repo Info link below.

#### [Repo Info](https://github.com/docker-library/repo-info/tree/master/repos/ros)

[![Compare Images](https://images.microbadger.com/badges/image/library/ros.svg)](https://microbadger.com/#/images/library/ros)

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/amd64/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/amd64/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/amd64/job/ros/) |
| [arm32v7](https://hub.docker.com/r/arm32v7/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm32v7/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/arm32v7/job/ros/) |
| [arm64v8](https://hub.docker.com/r/arm64v8/ros/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm64v8/ros)](https://doi-janky.infosiftr.net/job/multiarch/job/arm64v8/job/ros/) |

### [Gazebo ![Docker Pulls](https://img.shields.io/docker/pulls/_/gazebo.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/_/gazebo.svg?label=stars)](https://hub.docker.com/_/gazebo)

This repo contains images available for Gazebo. For more documentation on using these images, view the Docker Hub repo link above. Images are tagged by releases version, meta package, as well as code name for supported OS base images. For complete listing of tag, view the Repo Info link below.

#### [Repo Info](https://github.com/docker-library/repo-info/tree/master/repos/gazebo)

[![Compare Images](https://images.microbadger.com/badges/image/library/gazebo.svg)](https://microbadger.com/#/images/library/gazebo)

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/amd64/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/amd64/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/amd64/job/gazebo/) |
| [arm32v7](https://hub.docker.com/r/arm32v7/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm32v7/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/arm32v7/job/gazebo/) |
| [arm64v8](https://hub.docker.com/r/arm64v8/gazebo/tags) | [![Build Status](https://doi-janky.infosiftr.net/buildStatus/icon?job=multiarch/arm64v8/gazebo)](https://doi-janky.infosiftr.net/job/multiarch/job/arm64v8/job/gazebo/) |

---

## [OSRF Profile](https://hub.docker.com/u/osrf/)

The following repos are hosted under the OSRF Organization on Docker Hub. These images are tagged for development and advanced use cases. If you require extra dependencies not available from the Official Library images above, then these using these images may help save you build time during continuous integration or local development.

### [ROS ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros.svg?label=stars)](https://hub.docker.com/r/osrf/ros/)

This repo builds `FROM` the Official Library by including additional meta-packages such for desktop installations. These images may be helpful using containers for development or when display forwarding when using GUIs.

#### Repo Info

[![Compare Images](https://images.microbadger.com/badges/image/osrf/ros.svg)](https://microbadger.com/#/images/osrf/ros)

#### Architectures

| Type | Status |
|---|---|
| [amd64](https://hub.docker.com/r/osrf/ros/tags) | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros.svg?label=build)](https://hub.docker.com/r/osrf/ros/builds/) |

### [ROS2 ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros2.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros2.svg?label=stars)](https://hub.docker.com/r/osrf/ros2/)

This repo contains images specific to ROS 2, and are particularly for development and continuous integration. These may contain experimental features or unstable interfaces for testing the latest ROS 2 branches.

#### Repo Info

[![Compare Images](https://images.microbadger.com/badges/image/osrf/ros2.svg)](https://microbadger.com/#/images/osrf/ros2)

- `nightly`
  - _Description:_
    - includes pre-installed environment from nightly job on the build farm
    - closely mimics the Official Library images as be interchangeable
  - _Purpose:_
    - intended for CI and testing against the latest nightly builds
    - early detection of regressions or deprecation from upstream
- `nightly-rmw`
  - _Description:_
    - builds `FROM` `nightly` and installs open source libraries
    - including non default vendors:
      - Opensplice
  - _Purpose:_
    - intended for CI and testing against more rmw implementations
- `nightly-rmw-nonfree`
  - _Description:_
    - builds `FROM` `nightly-rmw` and installs closed source libraries
    - including non free vendors:
      - Connext
  - **Notice:**
    - includes third party license agreements for non free software
    - including the [`Open Community Source`](https://www.rti.com/products/pricing/compare) license from RTI

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros2.svg?label=build)](https://hub.docker.com/r/osrf/ros2/builds/) |

### [Gazebo ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/gazebo.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/gazebo.svg?label=stars)](https://hub.docker.com/r/osrf/gazebo/)

This repo builds `FROM` the Official Library by including additional meta-packages such for desktop installations. These images may be helpful using containers for development or when display forwarding when using GUIs.

#### Repo Info

[![Compare Images](https://images.microbadger.com/badges/image/osrf/gazebo.svg)](https://microbadger.com/#/images/osrf/gazebo)

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/gazebo.svg?label=build)](https://hub.docker.com/r/osrf/gazebo/builds/) |

### [ROS Legacy ![Docker Pulls](https://img.shields.io/docker/pulls/osrf/ros_legacy.svg?label=pulls) ![Docker Stars](https://img.shields.io/docker/stars/osrf/ros_legacy.svg?label=stars)](https://hub.docker.com/r/osrf/ros_legacy/)

This repo contains legacy images for ROS 1, specifically for releases predating the Official Library. This is intended as a complementary repo only for older releases of ROS that were not archived in the Official Library.

#### Repo Info

[![Compare Images](https://images.microbadger.com/badges/image/osrf/ros_legacy.svg)](https://microbadger.com/#/images/osrf/ros_legacy)

#### Architectures

| Type | Status |
|---|---|
| amd64 | [![Docker Build Status](https://img.shields.io/docker/build/osrf/ros_legacy.svg?label=build)](https://hub.docker.com/r/osrf/ros_legacy/builds/) |
