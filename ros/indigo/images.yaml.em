%YAML 1.1
# ROS Dockerfile database
---
images:
    @(rosdistro_name)-ros-core:
        base_image: @(os_name):@(os_code_name)
        template_name: docker_images/create_ros_core_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        packages:
            - wget
        ros_packages:
            - ros-core
    @(rosdistro_name)-ros-base:
        base_image: @(user_name):@(rosdistro_name)-ros-core
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        ros_packages:
            - ros-base
    @(rosdistro_name)-robot:
        base_image: @(user_name):@(rosdistro_name)-ros-base
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        ros_packages:
            - robot
    @(rosdistro_name)-perception:
        base_image: @(user_name):@(rosdistro_name)-ros-base
        template_name: docker_images/create_ros_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        ros_packages:
            - perception
