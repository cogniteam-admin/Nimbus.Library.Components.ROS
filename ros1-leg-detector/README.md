# Ros1-Leg-Detector

<img src="./ros1-leg-detector/nimbusc.png" alt="ros1-leg-detector" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/ros1-legs-detector
* Supported architectures <b>amd64/arm64/unknown/unknown</b>
* ROS version <b>noetic
</b>

# Short description
* ros1-legs-detector algorithm
License: LGPL

# Example usage
```
docker run -it --network=host cognimbus/ros1-legs-detector:latest roslaunch leg_tracker joint_leg_tracker.launch
```

# Subscribers
ROS topic | type
--- | ---
/scan | sensor_msgs/LaserScan


# Publishers
ROS topic | type
--- | ---
/visualization_marker | visualization_msgs/Marker


# Required tf
This node does not require tf


# Provided tf
This node does not provide tf


