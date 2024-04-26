%YAML 1.1
# ROS2 Dockerfile database
---
images:
    devel:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/devel/create_ros_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/devel/ros_entrypoint.sh
        template_packages:
            - docker_templates
        upstream_packages:
            - bash-completion
            - python3-argcomplete
            - python3-flake8
            - python3-flake8-blind-except
            - python3-flake8-builtins
            - python3-flake8-class-newline
            - python3-flake8-comprehensions
            - python3-flake8-deprecated
            - python3-flake8-docstrings
            - python3-flake8-import-order
            - python3-flake8-quotes
            - python3-pytest-repeat
            - python3-pytest-rerunfailures
        pip3_install:
        ws: /opt/ros2_ws
    source:
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/source/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        upstream_packages:
            - libasio-dev
            - libssl-dev
            - libtinyxml2-dev
        ros2_distro: humble
        ws: /opt/ros2_ws
        colcon_args:
            - build
            - --symlink-install
            - --mixin
                build-testing-on
                release
            - --cmake-args
                --no-warn-unused-cli
        rosdep:
            install:
                - --from-paths src
                - --ignore-src
                - --skip-keys "console_bridge fastcdr fastrtps libopensplice69 rti-connext-dds-6.0.1 urdfdom_headers"
        vcs:
            imports:
                repos:
