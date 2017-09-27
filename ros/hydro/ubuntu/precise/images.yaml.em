%YAML 1.1
# ROS Dockerfile database
---
images:
    ros:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_legacy/create_ros_core_image.Dockerfile.em
        entrypoint_name: docker_images_legacy/ros_entrypoint.sh
        template_packages:
            - docker_templates
        ros_packages:
            - ros
