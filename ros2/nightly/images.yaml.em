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
        rosdep_override:
            - prereqs.yaml
        rosdep:
            path: /opt/ros/$ROS_DISTRO/share
            skip_keys:
                - libopensplice69
                - rti-connext-dds-5.3.1
            rosdistro_index_url: https://raw.githubusercontent.com/osrf/docker_images/master/ros2/nightly/nightly/index-v4.yaml
        ros2_binary_url: https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
