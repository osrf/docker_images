%YAML 1.1
# ROS Dockerfile database
---
images:
    gzserver@(version):
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzserver_image.Dockerfile.em
        entrypoint_name: docker_images/gzserver_entrypoint.sh
        template_packages:
            - ros_docker_images
        packages:
            - lsb-release
        gazebo_packages:
            - gazebo@(version)
    libgazebo@(version):
        base_image: @(user_name):gzserver@(version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzclient_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        gazebo_packages:
            - libgazebo@(version)-dev
    gzweb@(version):
        base_image: @(user_name):libgazebo@(version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzweb_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        packages:
            - build-essential
            - cmake
            - imagemagick
            - libboost-all-dev
            - libgts-dev
            - libjansson-dev
            - libtinyxml-dev
            - mercurial
            - nodejs
            - nodejs-legacy
            - npm
            - pkg-config
            - psmisc
        gazebo_packages:
            - libgazebo@(version)-dev
    gzclient@(version):
        base_image: @(user_name):gzserver@(version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzclient_image.Dockerfile.em
        template_packages:
            - ros_docker_images
        packages:
            - binutils
            - mesa-utils
            - module-init-tools
            - x-window-system
        gazebo_packages:
            - gazebo@(version)
