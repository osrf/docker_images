%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ros-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_core_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/ros_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-core
    ros-base:
        base_image: @(user_name):@(ros2distro_name)-ros-core-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-base
        bootstrap_ros_tools:
    perception:
        base_image: @(user_name):@(ros2distro_name)-ros-base-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - perception
    simulation:
        base_image: @(user_name):@(ros2distro_name)-ros-base-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - simulation
    desktop:
        base_image: @(user_name):@(ros2distro_name)-ros-base-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - desktop
    desktop-full:
        base_image: osrf/@(user_name):@(ros2distro_name)-desktop-@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - desktop-full
