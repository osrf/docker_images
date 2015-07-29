# Maintaining Official Repo

The Dockerfiles used in Offical Docker Hub repos for OSRF projects are hosted here. The Dockerfiles themselves are structured carefully and explicitly.

* Hierarchy
 * Currently tags are nested to take advantage of the caching capabilities of docker. In this way, each tag build from each other like russan dolls. This is so that a user may still find a minimal tags that only include what they need, but should they eventually need more, no duplicate binaries need be downloaded or stored to disk.

* Versions
 * The way project Debian packages are installed must include the specific package version number. This is to ensure that the version to be installed is explicitly stated and will not happen to change over the course of the domino effect of automated build stages. This also helps keep builds repeatable and reproducible, and is a good practice to fallow when making your own tags from the official images.

## Update Procedure
The officla Docker Hub repo are required to be kept up to date. Security fix on an OS level usually come upstream, for us this is from the Offical Ubuntu image. However for our automatic rebuild triggered from ubuntu to work, the Debian packages referenced in the Dockerfile need to be installable.

### ROS
> One caviot for ROS's Debian package disrobutoin system is that [reprepro](http://mirrorer.alioth.debian.org/) can only host one version of a package ([as in FAQ 3.1](http://anonscm.debian.org/gitweb/?p=mirrorer/reprepro.git;a=blob_plain;hb=HEAD;f=docs/FAQ)), i.e. the latest one. In this case, the Dockerfile for the offical ROS repo should be updated accordingly, as the build of the Dockerfile will fial when apt-get fails to download the older package versions.

> This can be done simply however by using the scripts described in accompanying docs to regenerate all Dockerfiles. For ROS, the scripts will use ros_buildfarm.common package to fetch the latest package index and append the proper version numbers.

Also, we now pin the version used for each ROS package. Note that however, we are using reprepro (a tool to handle local repositories of debian packages), and as in FAQ 3.1 is limited to one version per architectur. So from the Repeatability documentation referenced

### Gazebo
> Gazebo has no buildfarm libraries, and so the version used is manually specified within the platform.yaml configuration.

Once the necessary changes are committed and pushed to the master branch of OSRF's docker_images repo, cosponsoring pull requests for the offical docker library repos will need to me made.

## Update Library
There are two relevent repositories for projects with offical repos. Each repo includes detailed instruction on the PR requirements and submission steps:

####[docker-library/docs](https://github.com/docker-library/docs)
This repo contains the markdown files rendered in the documentation for the repo information tab. If no text needs to be altered, then no PR is required.

####[docker-library/official-images](https://github.com/docker-library/official-images)
This repo contains the location and commit IDs used for definging the Dockerfile with each tag. So the commit ID that was pushed to OSRF's docker_images repo is what you'll use in the PR for updating the project. Make sure the Dockerfiles are all in working order before proceeding to this stage.

Once the PR are merged, the Docker HUb library will be updated and the changes should be reflect on the site in an hour or so. If an any child automate build repos are pointed at the offical projects, they will also be triggered once the official tags are rebuilt.
