%YAML 1.1
# ROS2 Dockerfile database
---
platform:
    os_name: @os_name
    os_code_name: @os_code_name
    rosdistro_name: @rosdistro_name
    ros2distro_name: @release_name
    user_name: ros
    maintainer_name:
    archs:
        - @('\n        - '.join(archs))@

    type: distribution
    version:
