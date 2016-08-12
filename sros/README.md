## Disclaimer
> **SROS is currently highly experimental and under heavy development**

> At time of writing, this effort is highly experimental and must '''not''' be considered production-grade. Rather, it is an exploration of various strategies for mitigating some of the most obvious ways that ROS systems would be compromised by "bad actors" of various sorts.

# What is [SROS](http://wiki.ros.org/SROS)?
SROS is a set of security enhancements for ROS, such as native TLS support for all socket transport within ROS, the use of x.509 certificates permitting chains of trust, definable namespace globbing for ROS node restrictions and permitted roles, as well as covenant user-space tooling to auto generate node key pairs, audit ROS networks, and construct/train access control policies. In addition, AppArmor profile library templates are also provided, allowing users to harden or quarantine ROS based processes running on a linux kernel.

# Getting Started
You can quickly test out SROS by running this short docker command and pulling the available docker image from OSRF.

``` terminal
$ docker run --rm -it \
    osrf/sros \
    bash -c "source /ros_entrypoint.sh && \
        sroskeyserver & \
        sleep 3 && \
        sroslaunch rospy_tutorials talker_listener.launch"
```

Whats happening here? Well, we are using a bash shell to source the ROS environment and start a simple talker listener ROS example. Once the keyserver is online, new nodes can connect to the keyserver to request new key pairs if their own nodestores are absent. The keyserver will use a pretrained policy profile for this example to generate signed key pairs with prescribed permissions and distribute them to requesting nodes. Nodes then use these key pairs to connect with each other. In the process, both nodes in a connection verify that the other is trusted as well as permitted to request/provide the purpose of the connection using common public key infrastructure.

The Dockerfile repo is:  
[github.com/osrf/docker_images](https://github.com/osrf/docker_images)  
And the images are hosted at:  
[hub.docker.com/r/osrf/sros](https://hub.docker.com/r/osrf/sros).

# Documentation
To read more about SROS and the current progress of the project, please see the ROS Wiki page:  
[wiki.ros.org/SROS](http://wiki.ros.org/SROS)
