%YAML 1.1
# ROS2 Dockerfile database
---
images:
    nightly:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/nightly/create_ros_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/nightly/ros_entrypoint.sh
        pip3_install:
            - argcomplete
        template_packages:
            - docker_templates
        ros2_binary_url: https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
