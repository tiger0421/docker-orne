#!/bin/bash
xhost +local:root

docker run -it --rm --name orne \
    -v ~/share:/root/share \
    -v ~/ros_ws/catkin_orne_ws:/docker/catkin_ws \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    tiger0421/docker-orne:cpu \
    /bin/bash

xhost -local:root
