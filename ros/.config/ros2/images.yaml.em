%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ros-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_core_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/ros_entrypoint.sh
        pip3_install:
            - argcomplete
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-core
    ros-base:
        base_image: @(user_name):@(ros2distro_name)-ros-core
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - ros-base
    desktop:
        base_image: @(user_name):@(ros2distro_name)-ros-base
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/create_ros_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - desktop
    ros1-bridge:
        base_image: @(user_name):@(ros2distro_name)-ros-base
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/ros1_bridge/ros_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - ros1-bridge
