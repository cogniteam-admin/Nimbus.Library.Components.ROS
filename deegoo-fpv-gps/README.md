# Deegpp FPV GPS

<img src="./deego-fpv-gps/gps.png" alt="amcl" width="400"/>

* ROS project page <a href="http://wiki.ros.org/amcl">http://wiki.ros.org/amcl</a>
* Dockerhub image https://hub.docker.com/repository/docker/cognimbus/deegoo-fpv-gps/general
* Supported architectures <b>amd64, arm64</b>
* ROS version <b>noetic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* ROS driver to parse NMEA strings and publish standard ROS NavSat message types. Does not require the GPSD daemon to be running.

# Example usage
```
docker run -it cognimbus/amcl roslaunch nmea_navsat_driver nmea_serial_driver.launch baud:=${baud} frame_id:=${gps.name}

```


