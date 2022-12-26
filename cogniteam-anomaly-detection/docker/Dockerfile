# This is an auto generated Dockerfile for ros:ros-core
# generated from docker_images/create_ros_core_image.Dockerfile.em
FROM ros:noetic

# copy example files
COPY ./anomaly_ws /anomaly_ws
WORKDIR ./anomaly_ws
RUN . /opt/ros/noetic/setup.sh && catkin_make

# setup entrypoint
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]


CMD ["roslaunch", "anomaly_detection_launch", "train.launch"]
