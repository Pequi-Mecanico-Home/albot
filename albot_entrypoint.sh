#!/bin/bash

source /opt/ros/foxy/setup.bash

colcon build --symlink-install

source install/setup.bash

exec "$@"