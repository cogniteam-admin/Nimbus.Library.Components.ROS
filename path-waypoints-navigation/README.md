# Path-Waypoints-Navigation

<img src="./path-waypoints-navigation/cogniteam.jpg" alt="path-waypoints-navigation" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/path-waypoints-navigation
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>noetic
</b>

# Short description
* waypoints_navigation
License: BSD

# Example usage
```
docker run -it cognimbus/path-waypoints-navigation roslaunch waypoints_navigation waypoints_navigation.launch minimal_distance:=-1 wait_for_pause_cmd_enable:=false go_to_next_point_before_reach_current:=false max_distance_before_skip_current_goal:=0.3 --screen
```

