# Nimbus.Library.Components.ROS


# Deployment CI

### branches:
once deploying into the `master` branch, all the environments will be updated with the modified components 
## Library Deployment Flow
### Prepare
* The job `create directory for modified components` use the script `.filter_only_updated_items.py` and collect all the items that has been modified compare to the last commit branch into a new directory (this new directory is available in the job artifact).

### test
In the `test` stage there are 3 jobs which are responsible to test that all the components are valid. 

each job execute the <a href="https://git.cognimbus.com/nimbus/nimbus.library.loader/-/tree/develop/script_cli/PushComponentsDevices">library.loader script</a> in test mode according to the environment make sure the user credentials and json files are valid as a `ComponentInfo` instance.
### deploy
The stage `deploy` contains 3 jobs for deploying modified components - each job deploy to another environment.
<a href="https://git.cognimbus.com/nimbus/nimbus.library.loader/-/tree/develop/script_cli/PushComponentsDevices">library.loader script</a>
</br>
</br>
In addition, there are 3 manual jobs for deploying all the components in the repository - each job use different environment.  

## Dependencies
the source code for the device/component deployment is located in https://git.cognimbus.com/nimbus/nimbus.library.loader. any changes in the deployment source code should be in this repository. 


# Images in Docker Hub
Algorithm | Architecture | Link
--- | --- | ---
amcl | linux/amd64 | https://hub.docker.com/r/cognimbus/amcl
arducam-jeston | linux/amd64 | https://hub.docker.com/r/cognimbus/arducam-jetson
aruco-code-detection | linux/amd64, linux/arm64 | https://hub.docker.com/r/cognimbus/aruco-code-detection
audio_say | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/audio_say
bboxes-to-3d-markers | linux/amd64 , linux/arm64 | https://hub.docker.com/repository/docker/cognimbus/bounding_boxes_objects_to_marker_array
bosch-imu-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/bosch-imu-driver
caffe-object-detection | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/caffe-object-detection
cartographer-slam | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/cartographer-slam
circle-detection | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/circle-detection
client-service-example | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/client-service
cogniteam-anomaly-detection | linux/amd64 , linux/arm64 |https://hub.docker.com/r/cognimbus/cogniteam-anomaly-detection
cogniteam-coverage-exploration | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/cogniteam-coverage-exploration
cogniteam-image-rotate-filp | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/image-rotate-filp
cogniteam-person-follower-depth | linux/amd64 , linux/arm64 |  https://hub.docker.com/repository/docker/cognimbus/person-follower/general
cogniteam-person-follower-rgb | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/person_follower_rgb_camera 
cogniteam-person-follower-sensor-fusion | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/cogniteam-person-follower-sensor-fusion
cogniteam-skeleton-gestures | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/cogniteam-skeleton-gestures
custom-message-talker-listener | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/custome-message-tutorial
custom-ros-service | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/custom-ros-service
deegoo-fpv-gps | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/deegoo-fpv-gps
depth-2-grayscale | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/depth_to_compressed_grayscale_img
depth-2-pcloud | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/depth_to_pcloud_scan
faces-landsmarks-mediapipe-amd | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/faces-landsmarks-mediapipe-amd
generic-webcam | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/opencv-webcam-driver
gmapping | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/gmapping
hamster-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/hamster-driver
hamster-v8-environment | linux/amd64 , linux/arm64 | No Docker Image
hamster-wandering | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/hamster-wandering
hands_pose_detectoion | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/hands-pose-detection
hector-mapping | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/hector-mapping
hokuyo | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/hokuyo
image-republisher | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/image-republisher
image-topic-to-rtsp | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/image-topic-to-rtsp
imu-filter-madgwick | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/imu-filter-madgwick
`isaac-skeleton-viewer/isaac-skeleton-viewer` | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/isaac-skeleton-ros
jetson-isaac-skeleton | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/jetson-isaac-skeleton-ros
joystick-teleop-twist | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/joystick-teleop
kobuki-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/kobuki_driver
lizi-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/lizi-driver
lsd-lidar-c16 | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/lsd-lidar-c16
lynx | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/lynx
m-exploration | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/m_exploration
map-server | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/map-server
mir-driver | linux/amd64 | https://hub.docker.com/r/cognimbus/dfki_mir_driver
move-base-navigation | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/move-base
novatel-gps | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/novatel-gps
odom-republisher/odom-republisher | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/rover-odom-republisher
omron-ld60-driver | linux/amd64 | https://hub.docker.com/r/cognimbus/omron_ld60_driver
openvino | linux/amd64 | https://hub.docker.com/r/intelpengo/openvino
orb2-slam | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/orb2-slam
ouster-driver/ouster-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/ros1-ouster-driver
path-publisher | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/path-publisher
path-waypoints-navigation | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/path-waypoints-navigation
razor-imu | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/razor-imu
realsense-camera | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/ros2-realsense-camera
realsense-t265 | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/realsenset265
ros-deep-learning-jetson-inference | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/ros_deep_learning_jetson_inference
ros-serial-st-python | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/rosserial_st_python
ros-tutorials-listener | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/sdk-examples 
ros1-gateway-arm32 | linux/arm/v7 | https://hub.docker.com/r/cognimbus/ros1-gateway-arm32
ros1-gateway-launch | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/ros1-gateway
ros_audio | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/ros-audio
rover-driver | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/rover-driver
rtsp-camera | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/rtsp-camera
server-service-example | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/server-service
slam-gmapping | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/slam_gmapping
turtlebot-navigation | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/turtlebot3-wafflepi
usb-camera | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/usb-cam
v2-joystick | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/joystick-teleop
`vins-mono-kitti` | | https://hub.docker.com/r/cognimbus/vins-mono-kitti
`vins-mono-pgo` | | https://hub.docker.com/r/cognimbus/vins-mono-pgo
`vins-mono-realsense` | | https://hub.docker.com/r/cognimbus/vins-mono-realsense
`vins-mono-vio` | | https://hub.docker.com/r/cognimbus/vins-mono-vio
`vins-mono-zr300` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300
`vins-mono-zr300-pgo` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-pgo
`vins-mono-zr300-vio` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio
`vins-mono-zr300-vio-realsense` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-realsense
`vins-mono-zr300-vio-t265` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265
`vins-mono-zr300-vio-t265-realsense` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense
`vins-mono-zr300-vio-t265-rviz` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-rviz
`vins-mono-zr300-vio-t265-realsense-rviz` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz
`vins-mono-zr300-vio-t265-realsense-rviz-pgo` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz-pgo
`vins-mono-zr300-vio-t265-realsense-rviz` | | https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz
vosk-speech-to-text | linux/amd64 , linux/arm64 | https://hub.docker.com/r/cognimbus/vosk-speech-to-text

- [amcl (linux/amd64)](https://hub.docker.com/r/cognimbus/amcl)
- [arducam-jeston (linux/amd64)](https://hub.docker.com/r/cognimbus/arducam-jetson)
- [aruco-code-detection (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/aruco-code-detection)
- [audio_say  (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/audio_say)
- [autopilot_bridge](https://hub.docker.com/repository/docker/cognimbus/ros1-autopilot-bridge/)
- [--bboxes-to-3d-markers](https://hub.docker.com/repository/docker/cognimbus/bounding_boxes_objects_to_marker_array)
- [bosch-imu-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/bosch-imu-driver)
- [caffe-object-detection (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/caffe-object-detection)
- [cartographer-slam (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cartographer-slam)
- [circle-detection (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/circle-detection)
- [client-service-example (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/client-service)
- [cogniteam-anomaly-detection (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cogniteam-anomaly-detection)
- [cogniteam-coverage-exploration (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cogniteam-coverage-exploration)
- [cogniteam-image-rotate-filp (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/image-rotate-filp)
- [--cogniteam-person-follower-depth (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cogniteam-person-follower-depth)
- [cogniteam-person-follower-rgb (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/person_follower_rgb_camera)
- [cogniteam-person-follower-sensor-fusion (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cogniteam-person-follower-sensor-fusion)
- [cogniteam-skeleton-gestures (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/cogniteam-skeleton-gestures)
- [--custom-message-talker-listener (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/custome-message-tutorial)
- [custom-ros-service (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/custom-ros-service)
- [deegoo-fpv-gps (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/deegoo-fpv-gps)
- [depth-2-grayscale (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/depth_to_compressed_grayscale_img)
- [depth-2-pcloud (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/depth_to_pcloud_scan)
- [faces-landsmarks-mediapipe-amd (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/faces-landsmarks-mediapipe-amd)
- [generic-webcam (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/opencv-webcam-driver)
- [gmapping (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/gmapping)
- [hamster-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hamster-driver)
- [--hamster-v8-environment (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hamster-v8-environment)
- [hamster-wandering (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hamster-wandering)
- [hands_pose_detector (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hands-pose-detection)
- [hector-mapping (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hector-mapping)
- [hokuyo (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hokuyo)
- [image-republisher (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/image-republisher)
- [image-topic-to-rtsp (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/image-topic-to-rtsp)
- [--imu-filter-madgwick (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/imu-filter-madgwick)
- [isaac-skeleton-viewer/isaac-skeleton-viewer (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/isaac-skeleton-ros)
- [jetson-isaac-skeleton (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/jetson-isaac-skeleton-ros)
- [joystick-teleop-twist (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/joystick-teleop)
- [kobuki-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/kobuki_driver)
- [lizi-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/lizi-driver)
- [lsd-lidar-c16 (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/lsd-lidar-c16)
- [lynx (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/lynx)
- [m-exploration (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/m_exploration)
- [map-server (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/map-server)
- [mir-driver (linux/amd64)](https://hub.docker.com/r/cognimbus/dfki_mir_driver)
- [move-base-navigation (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/move-base)
- [novatel-gps (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/novatel-gps)
- [odom-republisher/odom-republisher (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/rover-odom-republisher)
- [omron-ld60-driver (linux/amd64)](https://hub.docker.com/r/cognimbus/omron_ld60_driver)
- [--openvino](https://hub.docker.com/r/cognimbus/openvino)
- [orb2-slam (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/orb2-slam)
- [ouster-driver/ouster-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros1-ouster-driver)
- [path-publisher (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/path-publisher)
- [path-waypoints-navigation (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/path-waypoints-navigation)
- [razor-imu (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/razor-imu)
- [realsense-camera (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros2-realsense-camera)
- [realsense-t265 (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/realsenset265)
- [ros-deep-learning-jetson-inference (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros_deep_learning_jetson_inference)
- [--ros-serial-st-python](https://hub.docker.com/r/cognimbus/ros-serial-st-python)
- [--ros-tutorials-listener/ros-tutorials-listener](https://hub.docker.com/r/cognimbus/ros-tutorials-listener/ros-tutorials-listener)
- [ros-tutorials-talker/ros-tutorials-talker (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros2-tutorials-talker)
- [ros1-gateway-arm32 (linux/arm/v7)](https://hub.docker.com/r/cognimbus/ros1-gateway-arm32)
- [ros1-gateway-launch (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros1-gateway)
- [ros_audio (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/ros-audio)
- [rover-driver (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/rover-driver)
- [rtsp-camera (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/rtsp-camera)
- [server-service-example (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/server-service)
- [--sick-tim-driver ](https://hub.docker.com/r/cognimbus/sick-tim-driver)
- [slam-gmapping (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/slam_gmapping)
- [--speech-recognition ](https://hub.docker.com/r/cognimbus/speech-recognition)
- [--tf-from-rviz](https://hub.docker.com/r/cognimbus/tf-from-rviz)
- [--tf2-from-rviz](https://hub.docker.com/r/cognimbus/tf2-from-rviz)
- [--tf2-web-republisher](https://hub.docker.com/r/cognimbus/tf2-web-republisher)
- [turtlebot-navigation (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/turtlebot3-wafflepi)
- [--urdf-to-graphviz](https://hub.docker.com/r/cognimbus/urdf-to-graphviz)
- [usb-camera (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/usb-cam)
- [--usb-microphone](https://hub.docker.com/r/cognimbus/usb-microphone)
- [v2-joystick (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/joystick-teleop)
- [--video-to-rgb](https://hub.docker.com/r/cognimbus/video-to-rgb)
- [--vins-mono-kitti](https://hub.docker.com/r/cognimbus/vins-mono-kitti)
- [--vins-mono-pgo](https://hub.docker.com/r/cognimbus/vins-mono-pgo)
- [--vins-mono-realsense](https://hub.docker.com/r/cognimbus/vins-mono-realsense)
- [--vins-mono-vio](https://hub.docker.com/r/cognimbus/vins-mono-vio)
- [--vins-mono-zr300](https://hub.docker.com/r/cognimbus/vins-mono-zr300)
- [--vins-mono-zr300-pgo](https://hub.docker.com/r/cognimbus/vins-mono-zr300-pgo)
- [--vins-mono-zr300-vio](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio)
- [--vins-mono-zr300-vio-realsense](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-realsense)
- [--vins-mono-zr300-vio-t265](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265)
- [--vins-mono-zr300-vio-t265-realsense](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense)
- [--vins-mono-zr300-vio-t265-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-rviz)
- [--vins-mono-zr300-vio-t265-realsense-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz)
- [--vins-mono-zr300-vio-t265-realsense-rviz-pgo](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz-pgo)
- [--vins-mono-zr300-vio-t265-realsense-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz)
- [](https://hub.docker.com/r/cognimbus/)
- [](https://hub.docker.com/r/cognimbus/)