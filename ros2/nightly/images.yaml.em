%YAML 1.1
# ROS2 Dockerfile database
---
images:
    nightly:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/nightly/create_ros_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/nightly/ros_entrypoint.sh
        template_packages:
            - docker_templates
        upstream_packages:
            - bash-completion
        env_before:
          LANG:   "C.UTF-8"
          LC_ALL: "C.UTF-8"
          ROSDISTRO_INDEX_URL: "https://raw.githubusercontent.com/osrf/docker_images/master/ros2/nightly/nightly/index-v4.yaml"
        env_after:
          ROS_PACKAGE_PATH: "/opt/ros/$ROS_DISTRO/share"
        pip3_install:
            - argcomplete
            - flake8
            - flake8-blind-except
            - flake8-builtins
            - flake8-class-newline
            - flake8-comprehensions
            - flake8-deprecated
            - flake8-docstrings
            - flake8-import-order
            - flake8-quotes
            - pytest-repeat
            - pytest-rerunfailures
        rosdep:
            override_rule_files:
              - prereqs.yaml
            path: /opt/ros/$ROS_DISTRO/share
            skip_keys:
                - rti-connext-dds-5.3.1
        ros2_binary_url: https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
    nightly-rmw:
        base_image: osrf/ros2:nightly
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/nightly/create_ros_nightly_overlay.Dockerfile.em
        template_packages:
            - docker_templates
        rosdep:
            path: /opt/ros/$ROS_DISTRO/share
            skip_keys:
                - rti-connext-dds-5.3.1
    nightly-rmw-nonfree:
        base_image: osrf/ros2:nightly-rmw
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/nightly/create_ros_nightly_overlay.Dockerfile.em
        template_packages:
            - docker_templates
        rosdep:
            path: /opt/ros/$ROS_DISTRO/share
        env_before:
            RTI_NC_LICENSE_ACCEPTED: "yes"
        env_after:
            NDDSHOME: "/opt/rti.com/rti_connext_dds-5.3.1"
            PATH: '"$NDDSHOME/bin":$PATH'
            LD_LIBRARY_PATH: '"$NDDSHOME/lib/x64Linux3gcc5.4.0":$LD_LIBRARY_PATH'
