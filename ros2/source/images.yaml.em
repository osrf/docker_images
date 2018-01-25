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
        packages:
            - bash-completion
            - build-essential
            - clang-format
            - cmake
            - cppcheck
            - git
            - libasio-dev
            - libcurl4-openssl-dev
            - libeigen3-dev
            - libgles2-mesa-dev
            - libglu1-mesa-dev
            - libopencv-dev
            - libpoco-dev
            - libpocofoundation9v5
            - libpocofoundation9v5-dbg
            - libqt5core5a
            - libqt5gui5
            - libqt5opengl5
            - libqt5widgets5
            - libopensplice67
            - libssl-dev
            - libtinyxml-dev
            - libtinyxml2-dev
            - libxaw7-dev
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
            - python3-pip
            - python3-pyparsing
            - python3-setuptools
            - python3-vcstool
            - python3-yaml
            - qtbase5-dev
            - uncrustify
            - wget
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
            - pytest
            - pytest-cov
            - pytest-runner
        ws: /root/ros2_ws
        ament_args:
            - build
            - --build-tests
            - --cmake-args
                -DSECURITY=ON --
            - --isolated
            - --parallel
            - --symlink-install
        vcs:
            ros2:
                repos: https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
