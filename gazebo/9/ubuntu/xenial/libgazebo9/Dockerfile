# This is an auto generated Dockerfile for gazebo:libgazebo9
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver9-xenial
# label gazebo packages
LABEL sha256.libgazebo9-dev=caa76b1fd6ea5ddb4a22e5dae673490c95a11f1dbc1185fb9b0db696763b091f

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo9-dev=9.15.0-1* \
    && rm -rf /var/lib/apt/lists/*

