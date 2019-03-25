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
        ws: /opt/ros2_ws
    source:
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/source/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        upstream_packages:
            - libasio-dev
            - libtinyxml2-dev
        ros2_distro: crystal
        ws: /opt/ros2_ws
        colcon_args:
            - build
            - --cmake-args
                -DSECURITY=ON --no-warn-unused-cli
            - --symlink-install
        rosdep:
            install:
                - --from-paths src
                - --ignore-src
                - --skip-keys "console_bridge fastcdr fastrtps libopensplice67 libopensplice69 rti-connext-dds-5.3.1 urdfdom_headers"
        vcs:
            imports:
                repos:
