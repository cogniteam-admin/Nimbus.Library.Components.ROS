# Arducam

<img src="./arducam-jeston/arducam.jpg" alt="arducam" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/arducam-jetson
* Supported architectures <b>amd64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* arducam ROS driver

# Example usage
```
docker run -it --privileged --network host -v /dev/video0:/dev/video0 -v /tmp/argus_socket:/tmp/argus_socket cognimbus/arducam-jetson roslaunch local_camera_driver local_camera_driver.launch
```


