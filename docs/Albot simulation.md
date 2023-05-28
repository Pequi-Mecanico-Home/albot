# How to run albot simulation

## Gazebo

A ROS2 launch script is already provided for running the simulation. After you start the albot container with the ``docker_gazebo.sh`` script you can run the following command inside the container to start the simulation

```sh 
ros2 launch albot-description sim.launch.py
```

The additional parameter ``rviz:=true`` can be set to start the RViz2 visualization aswell.

One of the most important parts of the simulation is the world that its occurring. The parameter ``world`` accepts a path to a ``.world`` file, e.g.

```sh 
ros2 launch albot-description sim.launch.py \
rviz:=true \
world:=./src/albot-description/worlds/arena_par_0.world
```

This example starts the gazebo simulation in the ``arena_par_0.world`` and also starts the Rviz2 visualization.

## Rviz2

The visualization with the Rviz2 tool is highly configurable and this can be used in our favor to get a better view of what information our sensors are providing to the robot system.

By default the config set when running the simulation with the parameter ``rviz:=true`` is following the file ``view_bot.rviz``inside the albot-description/config directory.

However, after starting rviz you can edit the view the way you believe is better for the situation and save it with ``Ctrl+S`` and specify the directory you want to save it and later use this view again with:

```sh
rviz2 -d <path_to_config_file>
```