#!/bin/bash
set -e

SETUP_BASH="/opt/ros/$ROS_DISTRO/setup.bash"
SETUP_SH="/opt/ros/$ROS_DISTRO/setup.sh"

# setup ros environment
if [ ! -f $SETUP_BASH ]
then
    source $SETUP_SH
else
    source $SETUP_BASH
fi

exec "$@"
