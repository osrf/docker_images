# Environment Setup
## Setup from source
**Note:** This can all be bypassed by using the helper Dockerfile in the /docker folder.  
To first setup the necessary environment:

> Follow the Virtualenv section in ros_build [environment](https://github.com/ros-infrastructure/ros_buildfarm/blob/master/doc/environment.rst) setup.

    mkdir ~/ws/deploy_ros_buildfarm
    cd ~/ws/deploy_ros_buildfarm
    pyvenv-3.4 --without-pip venv
    . venv/bin/activate

> Setup the Virtualenv environment

    curl https://bootstrap.pypa.io/get-pip.py | python3
    pip3 install empy
    pip3 install rosdistro

    > Clone and add the necessary repositories to the PYTHONPATH

    mkdir ~/git/ros-infrastructure
    cd ~/git/ros-infrastructure
    git clone https://github.com/ros-infrastructure/ros_buildfarm.git
    git clone https://github.com/ros-infrastructure/docker_images.git
    git clone https://github.com/ros-infrastructure/docker_templates.git

    cd ~/git/ros-infrastructure/ros_buildfarm
    export PATH=`pwd`/scripts:$PATH
    export PYTHONPATH=`pwd`:$PYTHONPATH

    cd ~/git/ros-infrastructure/docker_images
    export PATH=`pwd`/scripts:$PATH
    export PYTHONPATH=`pwd`:$PYTHONPATH

    cd ~/git/ros-infrastructure/docker_templates
    export PATH=`pwd`/scripts:$PATH
    export PYTHONPATH=`pwd`:$PYTHONPATH

> This will include the necessary templates used by the autocorrelation scripts.
