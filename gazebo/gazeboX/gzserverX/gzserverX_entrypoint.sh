#!/bin/bash
set -e

# setup gazebo environment
source ${WS}/devel/setup.bash
exec "$@"
