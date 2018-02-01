%YAML 1.1
# Gazebo Dockerfile database
---
images:
    gzserver@(gazebo_version):
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzserver_image.Dockerfile.em
        entrypoint_name: docker_images/gzserver_entrypoint.sh
        template_packages:
            - docker_templates
        gazebo_packages:
            - gazebo@(gazebo_version)
    libgazebo@(gazebo_version):
        base_image: @(user_name):gzserver@(gazebo_version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzclient_image.Dockerfile.em
        template_packages:
            - docker_templates
        gazebo_packages:
            - libgazebo@(gazebo_version)-dev
    gzweb@(gazebo_version):
        base_image: @(user_name):libgazebo@(gazebo_version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzweb_image.Dockerfile.em
        template_packages:
            - docker_templates
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
            - xvfb
        gazebo_packages:
            - libgazebo@(gazebo_version)-dev
    gzclient@(gazebo_version):
        base_image: @(user_name):gzserver@(gazebo_version)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzclient_image.Dockerfile.em
        template_packages:
            - docker_templates
        packages:
            - binutils
            - mesa-utils
            - module-init-tools
            - x-window-system
        gazebo_packages:
            - gazebo@(gazebo_version)
