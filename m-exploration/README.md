# M-Exploration

<img src="./m-exploration/exploration.png" alt="m-exploration" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/m_exploration
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>
</b>

# Short description
* Greedy frontier-based exploration algorithm
git: https://github.com/cognimbus/nimbus.library/tree/master/Library/Components/m-exploration
License: BSD

# Example usage
```
docker run -it cognimbus/m-exploration roslaunch explore_lite explore.launch robot_base_frame:=base_link costmap_topic:=map costmap_updates_topic:=map_updates progress_timeout:=30 potential_scale:=3 orientation_scale:=0 gain_scale:=1 transform_tolerance:=0.3 min_frontier_size:=0.75 visualize:=true planner_frequency:=0.1 planner_frequency:=0.1 --screen
```

