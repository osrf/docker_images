%YAML 1.1
# ROS Dockerfile database
---
images:
    gzserver@(version):
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_gzserverX_image.Dockerfile.em
        entrypoint_name: docker_images/gzserverX_entrypoint.sh
        template_packages:
            - ros_docker_images
        gazebo_packages:
            - libbullet2.82-dev
            - libsimbody-dev
            - libignition-math2-dev
        packages:
            - build-essential
            - cmake
            - curl
            - freeglut3-dev
            - git
            - libassimp-dev
            - libavcodec-dev
            - libavformat-dev
            - libboost-all-dev
            - libfcl-dev
            - libccd-dev
            - libcegui-mk2-dev
            - libcurl4-openssl-dev
            - libeigen3-dev
            - libflann-dev
            - libfreeimage-dev
            - libgts-dev
            - libltdl3-dev
            - libogre-1.8-dev
            - libopenal-dev
            - libprotobuf-dev
            - libprotoc-dev
            - libqt4-dev
            - libswscale-dev
            - libtar-dev
            - libtbb-dev
            - libtinyxml-dev
            - libtinyxml2-dev
            - libxi-dev
            - libxml2-dev
            - libxmu-dev
            - liburdfdom-dev
            - liburdfdom-headers-dev
            - mercurial
            - pkg-config
            - playerc++
            - protobuf-compiler
            - python-pip
            - libdart-core4-dev
            - libbullet2.82-dev
            - libsimbody-dev
            - ruby-dev
        pip_install:
            - catkin-pkg
            - catkin-tools
            - empy
        ws: /root/ws/gazebo@(version)
        cmake_args:
            - -DCMAKE_BUILD_TYPE=Debug
        sources:
            catkin:
                cmd: git clone
                repo: https://github.com/ros/catkin.git
                branch: indigo-devel
            sdformat:
                cmd: hg clone
                package: https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_sdformat.xml
                repo: https://bitbucket.org/osrf/sdformat
                branch: default
            gazebo:
                cmd: hg clone
                package: https://bitbucket.org/scpeters/unix-stuff/raw/master/package_xml/package_gazebo.xml
                repo: https://bitbucket.org/osrf/gazebo
                branch: default
    # gzweb@(version):
    #     base_image: @(user_name):gzserver@(version)
    #     maintainer_name: @(maintainer_name)
    #     template_name: docker_images/create_gzwebX_image.Dockerfile.em
    #     template_packages:
    #         - ros_docker_images
    #     packages:
    #         - build-essential
    #         - cmake
    #         - imagemagick
    #         - libboost-all-dev
    #         - libgts-dev
    #         - libjansson-dev
    #         - libtinyxml-dev
    #         - mercurial
    #         - nodejs
    #         - nodejs-legacy
    #         - npm
    #         - pkg-config
    #         - psmisc
    #     gazebo_repo: https://bitbucket.org/osrf/gzweb
    #     gazebo_branch: default
