# Hector Mapping

<img src="./hector-mapping/hector.png" alt="hector-mapping" width="400"/>

* ROS project page <a href="http://wiki.ros.org/hector_mapping">http://wiki.ros.org/hector_mapping</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/hector-mapping
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>melodic</b>

# Short description
* hector_mapping is a SLAM approach that can be used without odometry as well as on platforms that exhibit roll/pitch motion (of the sensor, the platform or both). It leverages the high update rate of modern LIDAR systems like the Hokuyo UTM-30LX and provides 2D pose estimates at scan rate of the sensors (40Hz for the UTM-30LX). 

# Example usage
```
docker run -it cognimbus/hector-mapping


```


