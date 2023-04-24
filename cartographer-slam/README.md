# Cartographer SLAM

<img src="./cartographer-slam/cartographer-slam.png" alt="cartographer-slam" width="400"/>

* Project page <a href="https://google-cartographer-ros.readthedocs.io/en/latest/">https://google-cartographer-ros.readthedocs.io/en/latest/</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/cartographer-slam
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>noetic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* Cartographer is a system that provides real-time simultaneous localization and mapping (SLAM) in 2D and 3D across multiple platforms and sensor configurations. This project provides Cartographer’s ROS integration.

# Example usage
```
docker run -it --privileged cognimbus/cartographer-slam roslaunch cartographer_ros my_robot.launch
```


