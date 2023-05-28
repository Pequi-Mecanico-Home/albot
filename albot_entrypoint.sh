#!/bin/bash

source /opt/ros/foxy/setup.bash

colcon build --symlink-install

source install/setup.bash

chmod 777 -R /gazebo_ws/src

exec "$@"