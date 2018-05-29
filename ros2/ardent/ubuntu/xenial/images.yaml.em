%YAML 1.1
# ROS2 Dockerfile database
---
images:
    @(ros2distro_name)-core:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_core_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - rclcpp
            - rclpy
    @(ros2distro_name)-basic:
        base_image: osrf/@(user_name):@(ros2distro_name)-core
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        pip3_install:
            - argcomplete
        ros2_packages:
            - common-interfaces
            - composition
            - demo-nodes-cpp
            - demo-nodes-cpp-native
            - demo-nodes-py
            - examples*
            - launch
            - lifecycle
            - logging-demo
            - ros2msg
            - ros2node
            - ros2pkg
            - ros2run
            - ros2service
            - ros2srv
            - ros2topic
            - sros2
            - tf2*
            - tlsf*
            - topic-monitor
    @(ros2distro_name)-full:
        base_image: osrf/@(user_name):@(ros2distro_name)-basic
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        template_packages:
            - docker_templates
        ros2_packages:
            - astra-camera
            - cartographer-ros
            - depthimage-to-laserscan
            - depthimage-to-pointcloud2
            - dummy-map-server
            - dummy-robot-bringup
            - dummy-sensors
            - image-tools
            - intra-process-demo
            - joy
            - launch-testing
            - map-server
            - pcl-conversions
            - pendulum-control
            - robot-state-publisher
            - rosidl-default-generators
            - rviz2
            - rviz-default-plugins
            - teleop-twist-joy
            - teleop-twist-keyboard
    @(ros2distro_name)-ros1-bridge:
        base_image: osrf/@(user_name):@(ros2distro_name)-full
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros1_bridge_entrypoint.sh
        template_packages:
            - docker_templates
        ros2_packages:
            - ros1-bridge
            - turtlebot2*
