%YAML 1.1
# ROS2 Dockerfile database
---
images:
    testing:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/testing/create_ros_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/testing/ros_entrypoint.sh
        template_packages:
            - docker_templates
        env_before:
          LANG:   "C.UTF-8"
          LC_ALL: "C.UTF-8"
