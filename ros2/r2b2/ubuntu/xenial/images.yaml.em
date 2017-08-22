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
    @(ros2distro_name)-bridge:
        base_image: osrf/@(user_name):@(ros2distro_name)-core
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - docker_templates
        packages:
            - python-rospkg
        ros_packages:
            - catkin
            - common-msgs
            - rosbash
            - roscpp
            - roscpp-tutorials
            - roslaunch
            - rosmsg
            - rospy-tutorials
            - tf2-msgs
            - .*-*msg
        ros2_packages:
            - ros1-bridge
            - turtlebot2-*
            - .*-*msg
