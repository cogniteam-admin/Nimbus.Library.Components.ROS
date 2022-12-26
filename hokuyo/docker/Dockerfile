FROM ros:melodic-ros-core
RUN apt-get update
RUN apt-get install -y ros-melodic-urg-node 
RUN rm -rf /var/lib/apt/lists/*
COPY /urg_lidar.launch /opt/ros/melodic/share/urg_node/
CMD ["roslaunch", "urg_node", "urg_lidar.launch"]
