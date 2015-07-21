%YAML 1.1
# ROS2 Dockerfile database
---
images:
    ros2:
        base_image: @(os_name):@(os_code_name)
        template_name: docker_images/create_ros2_image.Dockerfile.em
        entrypoint_name: docker_images/ros2_entrypoint.sh
        template_packages:
            - ros_docker_images
        packages:
            - ros2
        ws: /root/ws/gazebo@(version)
        cmake_args:
            - --DBUILD_CORE_ONLY=ON
        sources:
            catkin:
                cmd: git clone
                repo: https://github.com/ros/catkin.git
                branch: master
