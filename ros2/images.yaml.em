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
            - cmake
            - cppcheck
            - git
            - libopencv-dev
            - libopensplice64
            - python-empy
            - python3-empy
            - python3-nose
            - python3-pip
            - python3-setuptools
            - python3-vcstool
            - wget
            - clang-format
            - pydocstyle
            - pyflakes
            - python3-coverage
            - python3-mock
            - python3-pep8
            - uncrustify
            - libboost-chrono-dev
            - libboost-date-time-dev
            - libboost-program-options-dev
            - libboost-regex-dev
            - libboost-system-dev
            - libboost-thread-dev
        pip3_install:
            - setuptools
        ws: /root/ros2_ws/src
        ament_args:
            - build
            - --build-tests
            - --symlink-install
        vcs:
            ros2:
                repos: https://raw.githubusercontent.com/ros2/ros2/master/ros2.repos
