# GMapping

<img src="./gmapping/nimbusc.gif" alt="gmapping" width="400"/>

* ROS project page <a href="http://wiki.ros.org/amcl">http://wiki.ros.org/gmapping</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/gmapping
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>melodic</b>

# Short description
* This package contains a ROS wrapper for OpenSlam's Gmapping. The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy grid map (like a building floorplan) from laser and pose data collected by a mobile robot.

# Example usage
```
docker run -it cognimbus/gmapping
```


