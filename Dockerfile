FROM ros:foxy-ros-core-focal

ENV ALBOT_WS=/gazebo_ws

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

RUN apt install nano


RUN mkdir -p $ALBOT_WS/src
# COPY ./packages /gazebo_ws/src
# RUN git clone -b sonar https://github.com/Pequi-Mecanico-Home/albot-description.git ./gazebo_ws/src/
WORKDIR $ALBOT_WS
RUN /bin/bash -c '. /opt/ros/${ROS_DISTRO}/setup.bash; colcon build --symlink-install' && \ 
    echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc && \ 
    echo "source $ALBOT_WS/install/setup.bash" >> /root/.bashrc 


COPY ./albot_entrypoint.sh /albot_entrypoint.sh
RUN chmod +x /albot_entrypoint.sh
ENTRYPOINT [ "/albot_entrypoint.sh" ]

RUN echo "export ROS_LOCALHOST_ONLY=1" >> /root/.bashrc

CMD ["bash"]