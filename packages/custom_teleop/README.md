# How to create a python package in ROS2

Inside your container

```sh 
cd gazebo_ws/src
```


```sh 
ros2 pkg create <package_name> --build-type ament_python
```

After editing your package you need to rebuild your workspace


```sh 
cd /gazebo_ws
colcon build 
```