# Autopilot bridge

<img src="./autopilot bridge/Autopilot_bridge.png" alt="Autopilot bridge" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/ros1-autopilot-bridge
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* ROS bridge to autopilot protocols.
Currently supports MAVLink-speaking autopilots, particularly those running ArduPlane and the ardupilotmega message set.

# Example usage
```
docker run -it --network host cognimbus/ros1-autopilot-bridge:navSatFix roslaunch autopilot_bridge autopilot_bridge.launch protocol:=udpin ip:=127.0.0.1 port:=10024
```


