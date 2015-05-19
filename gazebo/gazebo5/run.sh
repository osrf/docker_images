#!/bin/sh

if test $# -lt 1; then
	# Get the latest opengl-nvidia build
	# and start with an interactive terminal enabled
	args="-i -t $(docker images | grep ^cogrob/omnimapper-nvidia | head -n 1 | awk '{ print $1":"$2 }')"
else
        # Use this script with derived images, and pass your 'docker run' args
	args="$@"
fi

USER_UID=$(id -u)
USER_GID=$(id -g)
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
touch $XAUTH
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

OMNIMAPER_ROOT="/home/ruffsl/ws/gazebo"

docker run \
	-it --rm \
	--volume=$OMNIMAPER_ROOT:/ws/gazebo \
	--device /dev/nvidia0:/dev/nvidia0 \
	--device /dev/nvidiactl:/dev/nvidiactl \
	-p 8080:8080 \
	-p 7681:7681 \
	$args

	# -u dox \

	# --volume=/run/user/${USER_UID}/pulse:/run/pulse \
	# --volume=$XSOCK:$XSOCK:rw \
	# --volume=$XAUTH:$XAUTH:rw \
	# --env="XAUTHORITY=${XAUTH}" \
	# --env="DISPLAY=${DISPLAY}" \
	# --env="USER_UID=${USER_UID}" \
	# --env="USER_GID=${USER_GID}" \
