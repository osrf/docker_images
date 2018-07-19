%YAML 1.1
# ROS2 Dockerfile database
---
images:
    source:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_source_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_source_entrypoint.sh
        template_packages:
            - docker_templates
        upstream_packages:
            - bash-completion
            - git
            - libasio-dev
            - libtinyxml2-dev
            - wget
        ros2_repo_packages:
            - python3-catkin-pkg-modules
            - python3-vcstool
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
        ws: /root/ros2_ws
        colcon_args:
            - build
            - --cmake-args
                -DSECURITY=ON --no-warn-unused-cli
            - --symlink-install
        vcs:
            ros2:
                repos: https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
