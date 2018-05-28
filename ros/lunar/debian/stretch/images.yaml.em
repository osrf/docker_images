%YAML 1.1
# ROS Dockerfile database
---
images:
    ros-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_core_image.Dockerfile.em
        entrypoint_name: docker_images/ros_entrypoint.sh
        template_packages:
            - docker_templates
        ros_packages:
            - ros-core
    ros-base:
        base_image: @(user_name):@(rosdistro_name)-ros-core-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros_packages:
            - ros-base
    robot:
        base_image: @(user_name):@(rosdistro_name)-ros-base-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros_packages:
            - robot
    perception:
        base_image: @(user_name):@(rosdistro_name)-ros-base-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros_packages:
            - perception
    desktop:
        base_image: @(user_name):@(rosdistro_name)-robot-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros_packages:
            - desktop
    desktop-full:
        base_image: osrf/@(user_name):@(rosdistro_name)-desktop-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros_packages:
            - desktop-full
