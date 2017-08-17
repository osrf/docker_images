%YAML 1.1
# ROS Dockerfile database
---
images:
    drcsim@(version):
        base_image: @(base_image)
        template_name: docker_images/create_drcsim_image.Dockerfile.em
        entrypoint_name: docker_images/drcsim_entrypoint.sh
        template_packages:
            - ros_docker_images
        packages:
            - drcsim-prerelease
