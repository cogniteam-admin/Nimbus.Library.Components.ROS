# Nextvision_Cam

<img src="./nextVision_cam/nimbusc.jpg" alt="nextVision_cam" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/ros1-nextvision-cam
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>noetic
</b>

# Short description
* Local ROS master gateway
License: BSD

# Example usage
```
docker run -it --privileged --network=host cognimbus/nextVision_cam roslaunch next_vision_cam next_vision.launch IP:=192.168.0.20 Port:=10024
```

