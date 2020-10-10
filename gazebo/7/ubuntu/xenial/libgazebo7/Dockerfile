# This is an auto generated Dockerfile for gazebo:libgazebo7
# generated from docker_images/create_gzclient_image.Dockerfile.em
FROM gazebo:gzserver7-xenial
# label gazebo packages
LABEL sha256.libgazebo7-dev=7e85e62415348ecc49f4ec6b65cc9393ffebcf1953cdd9f92fc388ffa5977e38

# install gazebo packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgazebo7-dev=7.16.1-1* \
    && rm -rf /var/lib/apt/lists/*

