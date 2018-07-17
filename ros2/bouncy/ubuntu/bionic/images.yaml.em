%YAML 1.1
# ROS2 Dockerfile database
---
images:
    @(ros2distro_name)-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_core_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - rclcpp
            - rclpy
            - ros-environment
    @(ros2distro_name)-basic:
        base_image: osrf/@(user_name):@(ros2distro_name)-core
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        pip3_install:
            - argcomplete
        ros2_packages:
            - common-interfaces
            - composition
            - demo-nodes-cpp
            - demo-nodes-cpp-native
            - demo-nodes-py
            - examples*
            - launch
            - lifecycle
            - logging-demo
            - ros2launch
            - ros2lifecycle
            - ros2msg
            - ros2node
            - ros2param
            - ros2pkg
            - ros2run
            - ros2service
            - ros2srv
            - ros2topic
            - sros2
            - tf2*
            - tlsf*
            - topic-monitor
    @(ros2distro_name)-full:
        base_image: osrf/@(user_name):@(ros2distro_name)-basic
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - angles
            - astra-camera
            - cartographer-ros
            - depthimage-to-laserscan
            - depthimage-to-pointcloud2
            - dummy-map-server
            - dummy-robot-bringup
            - dummy-sensors
            - image-tools
            - intra-process-demo
            - joy
            - launch-testing
            - map-server
            - pcl-conversions
            - pendulum-control
            - robot-state-publisher
            - rosidl-default-generators
            - rviz2
            - rviz-default-plugins
            - teleop-twist-joy
            - teleop-twist-keyboard
    @(ros2distro_name)-ros1-bridge:
        base_image: osrf/@(user_name):@(ros2distro_name)-full
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros1_bridge_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - ros1-bridge
            - turtlebot2*
    @(ros2distro_name)-source:
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
            - libassimp-dev
            - libcurl4-openssl-dev
            - libeigen3-dev
            - libfreetype6-dev
            - libgles2-mesa-dev
            - libglu1-mesa
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
            - python3-coverage
            - python3-dev
            - python3-empy
            - python3-mock
            - python3-nose
            - python3-pep8
            - python3-pyparsing
            - python3-pytest
            - python3-pytest-cov
            - python3-pytest-runner
            - python3-setuptools
            - python3-yaml
            - qtbase5-dev
            - wget
        ros2_repo_packages:
            - libopensplice67
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
                repos: https://raw.githubusercontent.com/ros2/ros2/release-bouncy/ros2.repos
