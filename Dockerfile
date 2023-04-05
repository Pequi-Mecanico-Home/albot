FROM ros:foxy-ros-core-focal

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        build-essential \
        ros-foxy-gazebo-plugins \
        ros-foxy-gazebo-ros-pkgs \
        ros-foxy-rviz2 \
        python3-colcon-common-extensions \
        gcc \
        g++ \
        ros-foxy-xacro \
        ros-foxy-robot-state-publisher \
        ros-foxy-teleop-twist-keyboard \
        git


RUN mkdir -p /gazebo_ws/src
RUN git clone https://github.com/Pequi-Mecanico-Home/albot-description.git ./gazebo_ws/src/
WORKDIR /gazebo_ws
RUN /bin/bash -c '. /opt/ros/${ROS_DISTRO}/setup.bash; colcon build --symlink-install' && \ 
    echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc && \ 
    echo "source /gazebo_ws/install/setup.bash" >> /root/.bashrc 

RUN sysctl -w kernel.shmmax=2147483648

CMD ["bash"]
