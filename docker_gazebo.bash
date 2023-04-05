#!/bin/bash

xhost +local:nvidia-docker && \
nvidia-docker run -it --rm --env="DISPLAY" --gpus all --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="LIBGL_ALWAYS_SOFTWARE=1" --cpus 4  --memory 4g gazebo-albot:1.1