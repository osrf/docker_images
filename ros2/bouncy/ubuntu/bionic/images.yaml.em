%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ros-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_core_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        pip3_install:
            - argcomplete
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-core
    ros-base:
        base_image: osrf/@(user_name):@(ros2distro_name)-ros-core
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-base
    desktop:
        base_image: osrf/@(user_name):@(ros2distro_name)-ros-base
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - desktop
    ros1-bridge:
        base_image: osrf/@(user_name):@(ros2distro_name)-desktop
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros1_bridge_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - ros1-bridge
            - turtlebot2-demo
