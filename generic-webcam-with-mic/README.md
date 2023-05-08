# Generic Webcam

<img src="generic-webcam-with-mic/generic-webcam-driver.jpg" alt="generic-webcam" width="400"/>

* ROS project page <a href="http://wiki.ros.org/audio_common">http://wiki.ros.org/audio_common</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/generic-webcam-with-mic
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>noetic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* Provides code to capture audio from a microphone and transport it to a destination for playback, and The usb_cam_node interfaces with standard USB cameras.


# Example usage
```
docker run -it cognimbus/generic-webcam-with-mic:latest roslaunch usb_cam_clear.launch
```


