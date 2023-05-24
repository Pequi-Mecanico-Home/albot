# albot

## Cloning the repository

In order to have access to the albot-description package contents you need to add the `--recursive` flag to the clone command. Example:

```sh 
git clone --recursive https://github.com/Pequi-Mecanico-Home/albot.git
```

## Building and running the container

The first step to be able to run the albot docker container is to build the image from the Dockerfile, you can do this with the following command:

```sh 
docker build -t gazebo-rviz-albot:1.5 .
```

After building the Docker image properly feel free to run the container via the script `docker_gazebo.sh`

```sh 
source ./docker_gazebo.sh
```

