# Yujin-Kobuki-Driver

<img src="./yujin-kobuki-driver/nimbusc.jpg" alt="yujin-kobuki-driver" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/kobuki_driver
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>melodic
</b>

# Short description
* Yujin Kobuki robot driver
git: https://github.com/cognimbus/nimbus.library/tree/master/Library/Components/kobuki-driver
License: BSD

# Example usage
```
docker run -it cognimbus/yujin-kobuki-driver roslaunch kobuki_launch kobuki.launch base:=kobuki base_frame:=base_link stacks:=hexagons 3d_sensor:=r200 serialport:=/dev/ttyUSB0 kobuki_publish_tf:=true undocking_duration_seconds:=3
```

