# Lynx-Driver

<img src="./lynx-driver/lynx.png" alt="lynx-driver" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/lynx
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>melodic
</b>

# Short description
* Cogniteam lynx driver
git: https://github.com/cognimbus/nimbus.library/tree/master/Library/Components/lynx
License: BSD

# Example usage
```
docker run -it cognimbus/lynx-driver roslaunch lynx_driver lynx_driver.launch drive_steering_zero_pwm:=1500 drive_tick_to_m:=0.004508 pid_rate:=50 pid_kp:=2 pid_ki:=0 pid_kd:=0.1 pid_process_smooth_factor:=0 pid_control_smooth_factor:=0.8 --screen
```

# Lynx-Gps-Localization

<img src="./lynx-gps-localization/lynx.png" alt="lynx-gps-localization" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/lynx
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>melodic
</b>

# Short description
* Cogniteam lynx-gps-localization
git: https://github.com/cognimbus/nimbus.library/tree/master/Library/Components/lynx
License: BSD

# Example usage
```
docker run -it cognimbus/lynx-gps-localization roslaunch lynx_launch gps_localization.launch tf_prefix:= --screen
```

# Lynx-Navigation

<img src="./lynx-navigation/lynx.png" alt="lynx-navigation" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/lynx
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>melodic
</b>

# Short description
* Cogniteam lynx navigation
git: https://github.com/cognimbus/nimbus.library/tree/master/Library/Components/lynx
License: BSD

# Example usage
```
docker run -it cognimbus/lynx-navigation roslaunch lynx_launch navigation.launch tf_prefix:= rate:=30 steer_range:=25 steer_trajectories:=51 speed:=1 speed_obstacle:=0.7 goal_tolerance:=2 steer_scale:=1 lidar_3d_min_obstacle_height:=0.2 lidar_3d_max_obstacle_height:=1.5 --screen
```

