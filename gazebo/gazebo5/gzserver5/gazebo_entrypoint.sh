#!/bin/bash
set -e

# setup ros environment
source "/usr/share/gazebo/setup.sh"
exec "$@"
