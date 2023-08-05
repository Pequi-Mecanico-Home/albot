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

rocker --devices /dev/dri --x11 \
  --name albot-container \
  --network host \
  --oyr-run-arg " -v $PATH_ALBOT/packages:/gazebo_ws/src:ro" \
  rafaeljose/albot \
  ${@:-"ros2 launch albot-description sim.launch.py"}