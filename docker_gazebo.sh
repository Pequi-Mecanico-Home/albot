#!/bin/bash

PATH_ALBOT="$PWD"

if [[ $PATH_ALBOT == *"/albot" ]]; then
    echo -e "\nStarting ALBOT docker container.\n"

else
    echo -e "\nPlease run this script inside your ALBOT directory.\n"
    echo "Press Ctrl+C to exit."
    sleep 1m
    echo "exiting terminal"
    sleep 5
    exit 1 
fi

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
        --volume "$PATH_ALBOT/packages:/gazebo_ws/src" \
        --cpu-shares 1024  \
        --memory 2g \
        gazebo-rviz-albot:1.5 


