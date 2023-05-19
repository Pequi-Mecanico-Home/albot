# albot

## Configuring development environment

You need to specify the path to the albot repository you cloned

```sh 
cd <path_to_cloned_repo>
pwd
```

`
/home/faeu/Desktop/albot
`

```sh 
export PATH_ALBOT=/home/faeu/Desktop/
```


## Building and running the container

```sh 
docker build -t gazebo-rviz-albot:1.2 .
```

```sh 
source ./docker_gazebo.bash
```

