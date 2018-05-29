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
            - build-essential
            - clang-format
            - cmake
            - cppcheck
            - git
            - libasio-dev
            - libcurl4-openssl-dev
            - libeigen3-dev
            - libfreetype6-dev
            - libgles2-mesa-dev
            - libglu1-mesa-dev
            - libopencv-dev
            - libpoco-dev
            - libqt5core5a
            - libqt5gui5
            - libqt5opengl5
            - libqt5widgets5
            - libssl-dev
            - libtinyxml-dev
            - libtinyxml2-dev
            - libxaw7-dev
            - libxrandr-dev
            - openssl
            - pydocstyle
            - pyflakes
            - python-empy
            - python3-coverage
            - python3-dev
            - python3-empy
            - python3-mock
            - python3-nose
            - python3-pep8
            - python3-pyparsing
            - python3-setuptools
            - python3-yaml
            - qtbase5-dev
            - uncrustify
            - wget
        ros2_repo_packages:
            - libopensplice67
            - python3-colcon-argcomplete
            - python3-colcon-bash
            - python3-colcon-cmake
            - python3-colcon-core
            - python3-colcon-defaults
            - python3-colcon-devtools
            - python3-colcon-library-path
            - python3-colcon-metadata
            - python3-colcon-output
            - python3-colcon-package-information
            - python3-colcon-package-selection
            - python3-colcon-parallel-executor
            - python3-colcon-powershell
            - python3-colcon-python-setup-py
            - python3-colcon-recursive-crawl
            - python3-colcon-ros
            - python3-colcon-test-result
            - python3-colcon-zsh
            - python3-vcstool
        pip3_install:
            - argcomplete
            - catkin_pkg
            - flake8
            - flake8-blind-except
            - flake8-builtins
            - flake8-class-newline
            - flake8-comprehensions
            - flake8-deprecated
            - flake8-docstrings
            - flake8-import-order
            - flake8-quotes
            - pytest
            - pytest-cov
            - pytest-repeat
            - pytest-rerun-failures
            - pytest-runner
            - vcstool
        ws: /root/ros2_ws
        colcon_args:
            - build
            - --cmake-args
                " -DBUILD_TESTING=ON" " -DSECURITY=ON"
            - --symlink-install
        vcs:
            ros2:
                repos: https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos
