%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ubuntu:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_deb_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - ros_docker_images
        packages:
            - python3-pip
        pip3_install:
            - argcomplete
            - flake8
            - flake8-import-order
        ros2_packages:
            - demo-nodes-cpp
            - demo-nodes-py
            - ros2run
            - sros2
