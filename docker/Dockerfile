FROM python:3

WORKDIR /tmp/

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN git clone \
        -b master \
        https://github.com/osrf/docker_images.git

ENV PYTHONPATH=/tmp/ros_buildfarm:/tmp/docker_images:/tmp/docker_templates:

WORKDIR /tmp/docker_images
RUN git config --global --add safe.directory /tmp/docker_images
