# Creating ROS2 packages inside the albot container


Inside your container

```sh 
cd gazebo_ws/src
```


```sh 
ros2 pkg create <package_name> --build-type ament_python
```

After editing your package you need to rebuild your workspace.


```sh 
cd /gazebo_ws
colcon build 
```
Additionaly you can add the flag `--symlink-install` at the end of the build command to ensure your updates to the package code are applied without need to rebuild every time.


And source it

```sh 
cd /gazebo_ws
source install/setup.bash
```