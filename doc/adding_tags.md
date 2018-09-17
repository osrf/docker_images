# Adding Tags

## Configuration Files
The configuration files are basically in a yaml format. This permits a flexible assignment of flags, variables, and setting to be used when generating the tagged Dockerfiles. The yaml data is parsed into an ordered data dictionary, that is then available by the specified templates.

### platform.yaml
The `platform.yaml` file defines the configuration of the platform in a high level to be used in generating the tagged Dockerfiles. The parameters defined here should be used for populating the platform specific in the images.yaml.em file. Common parameters used in current projects include:

* `os_name`: distribution name, eg. `ubuntu`
* `os_code_name`: distribution name version, eg. `trusty` or `14.04`
* `rosdistro_name`: ROS 1 distribution version, eg. `indigo`
* `ros2distro_name`: ROS 2 distribution version, eg. `bouncy`
* `arch`: image architecture, eg, `amd64`
* `type`: release type, eg. `distribution` or `experimental`

### images.yaml.em
The `images.yaml.em` file defines the configuration of each tag image to generate. This file is in fact a empy template formatted as a yaml file. In this way, the parameters specified in the `platform.yaml` are used to populate the `images.yaml.em` template, that is then consumed by the yaml parser within the auto generation scripts. Agian, how you choose to include parameters is quite flexible, as they are simply used by the templates you chose in a pythonic dictionary fashion. The parameters that may be optional or required remain template specific. Common examples include:

* `@(rosdistro_name)-ros-core`: the tag name used, note the empy use of the platform parameters
 * `base_image`: defines the parent FROM image for tag, eg. `@(os_name):@(os_code_name)`
 * `template_name`: the name of the empy template to use, eg. `docker_images/create_ros_core_image.Dockerfile.em`
 * `entrypoint_name`: the name of the entry point to include in the Dockerfile, eg. `docker_images/ros_entrypoint.sh`
 * `template_packages`: the hysterical list of template packages to look for template
 * `upstream_packages`: list of general project dependencies to install
 * `ros_packages`: list of project specific packages to install from the ROS apt repository, perhaps after project package sources are installed by template.
 * `ros2_repo_packages`: list of project specific packages to install from the ROS 2 apt repository.
 * `pip3_install`: list of packages to install from pip3.
