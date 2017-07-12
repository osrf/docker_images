%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ros2:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - ros_docker_images
        packages:
            - build-essential
            - clang-format
            - cmake
            - cppcheck
            - git
            - libasio-dev
            - libeigen3-dev
            - libopencv-dev
            - libpoco-dev
            - libpocofoundation9v5
            - libpocofoundation9v5-dbg
            - libssl-dev
            - libtinyxml-dev
            - libtinyxml2-dev
            - openssl
            - pydocstyle
            - pyflakes
            - python3-coverage
            - python3-dev
            - python3-empy
            - python3-empy
            - python3-mock
            - python3-nose
            - python3-pep8
            - python3-pip
            - python3-setuptools
            - python3-vcstool
            - uncrustify
            - wget
            - vim
        pip3_install:
            - flake8-import-order
            - argcomplete
        ws: /root/ros2_ws/src
        ament_args:
            - build
            - --symlink-install
            - --isolated
            - --parallel
            - --cmake-args
            - -DSECURITY=ON --
        vcs:
            ros2:
                repos: https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos
