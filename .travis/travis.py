#!/usr/bin/env python

import os
print("REPO: ",os.environ['REPO'])
print("TAG: ",os.environ['TAG'])

# docker build -t $REPO:$TAG-ros-core $REPO/$TAG/$TAG-ros-core
