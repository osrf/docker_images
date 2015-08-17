#!/bin/bash
set -e

# setup gazebo environment
source "/usr/share/drcsim/setup.sh"
exec "$@"
