%YAML 1.1
# Ignition Dockerfile database
---
images:
    ignition:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images/create_ignition_image.Dockerfile.em
        # entrypoint_name: docker_images/no_entrypoint.sh
        template_packages:
            - docker_templates
        ignition_packages:
            - ignition-@(ignition_version)
