# Dockerfile generating Dockerfile
This is a simple python image that installs and clones necessary dependencies relevant for using the Dockerfile generating scripts using the configuration files located here in [osrf/docker_images](https://github.com/osrf/docker_images), and the templates located at [osrf/docker_templates](https://github.com/osrf/docker_templates).
## Using this Dockerfile

We'll go through an example of using this Dockerfile to update the other Dockerfiles, lets take ros indigo for example:

> Build the image using the makefile

```console
make build
```

> Run the scrip from this folder. This will mount the local repo folder into the container, and launch a bash sessions

```console
./run.sh bash
```

> Once inside the container we can use the `create_dockerfiles.py` python script to update the Dockerfile and exit

```console
cd ros
./create_dockerfiles.py dir -d indigo/
exit
```

> You should now see the relative changes in the local directories. You can check the new file timestamps to be sure.
