#!/bin/bash

xhost +local:
docker run \
        -it \
        --rm \
        --privileged \
        --net=host \
        --env DISPLAY="$DISPLAY" \
        --env QT_X11_NO_MITSHM=1 \
        --env LIBGL_ALWAYS_SOFTWARE=0 \
        --volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --volume "$PATH_ALBOT/albot/packages:/gazebo_ws/src" \
        --cpu-shares 1024  \
        --memory 2g \
        gazebo-rviz-albot:1.2


