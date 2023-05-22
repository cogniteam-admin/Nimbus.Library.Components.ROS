# Path-Publisher

<img src="./path-publisher/cogniteam.jpg" alt="path-publisher" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/path-publisher
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>noetic
</b>

# Short description
* path-publisher
 License: BSD

# Example usage
```
docker run -it --privileged -v /opt/nimbus/data/waypoints/:/path_publisher_ws/src/path_publisher/waypoints/ cognimbus/path-publisher roslaunch path_publisher path_publisher.launch waypoints_file_name:=square.yaml --screen
```

