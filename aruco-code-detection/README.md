# Aruco code detection

<img src="./aruco-code-detection/aruco_detection.png" alt="aruco code detection" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/aruco-code-detection
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>noetic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* This node finds aruco markers in images stream and publishes their vertices (corner points) and estimates 3D transforms from the camera to the fiducials. It is based on the Aruco contributed module to OpenCV

# Example usage
```
docker run -it cognimbus/aruco-code-detection roslaunch aruco_detection aruco_detection.launch type:=DICT_ARUCO_ORIGINAL --screen
```
* The aruco types to use. Possible values: 			
            "DICT_4X4_50",
			"DICT_4X4_100",
			"DICT_4X4_250",
			"DICT_4X4_1000",
			"DICT_5X5_50",
			"DICT_5X5_100",
			"DICT_5X5_250",
			"DICT_5X5_1000",
			"DICT_6X6_50",
			"DICT_6X6_100",
			"DICT_6X6_250",
			"DICT_6X6_1000",
			"DICT_7X7_50",
			"DICT_7X7_100",
			"DICT_7X7_250",
			"DICT_7X7_1000",
			"DICT_ARUCO_ORIGINAL",
			"DICT_APRILTAG_16h5",
			"DICT_APRILTAG_25h9"9,
			"DICT_APRILTAG_36h10",
			"DICT_APRILTAG_36h11"


