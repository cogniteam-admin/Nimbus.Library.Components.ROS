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
- [amcl (linux/amd64)](https://hub.docker.com/r/cognimbus/amcl): amcl is a probabilistic localization system for a robot moving in 2D. This docker image provides a comprehensive example environment that includes robot motion models, sensor models and a map of the environment.
- [arducam-jetson (linux/amd64)](https://hub.docker.com/r/cognimbus/arducam-jetson): The xonducam-jetson docker image provides a quick and easy way to use ArduCAM cameras on the Jetson platforms. It allows developers to develop applications for the various and varied platforms without having to deal with the details of building the project.
- [aruco-code-detection (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/aruco-code-detection): This docker image provides an easy way to implement Aruco Codes detection, tracking and mapping functionalities. It is suitable for all kinds of 2D/3D roboticors applications such as localization, SLAM, navigation and navigation.
- [audio_say (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/audio_say):  The audio_say docker image provides a quick and easy way to generate sound from text-to-speech. It supports a wide variety of languages with varying level of accuracy and naturalness.
- [bboxes-to-3d-markers (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/bboxes-to-3d-markers): The bboxes-to-3d-markers docker image is a valuable asset for robotic applications that require tracking and mapping of 3D markers. It provides a means to rapidly identify and detect 3D markers from 2D images with the help of bounding boxes.
- [bosch-imu-driver (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/bosch-imu-driver): The bosch-imu-driver docker image provides an easy way to use Bosch's high-end industrial motion sensors. It is capable of reading and recording orientation, acceleration, velocity, and other data in real-time from the IMU sensor at whatever speed is required by the application.
- [caffe-object-detection (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/caffe-object-detection):  The caffe-object-detection docker image is for fast and accurate object recognition built on the popular Caffe deep learning framework. It is capable of detecting objects in real-time and comes with pre-trained models for better accuracy.
- [cartographer-slam (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/cartographer-slam): The cartographer-slam docker image provides a robust solution for environmental mapping and localization of robots. It uses the multi-sensor Simultaneous Localization and Mapping (SLAM) algorithm to autonomously build a 2D or 3D map of the environment while navigating it.

- **Circle Detection**: This image allows you to detect and track circles in images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/circle-detection))
- **Client Service Example**: This image provides an example client service showing how to write and correctly handle ROS messages. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/client-service))
- **CogniTeam Anomaly Detection**: This image allows you to detect and track anomalies in images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/cogniteam-anomaly-detection))

- **CogniTeam Coverage Exploration**: This image allows you to explore coverage in images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/cogniteam-coverage-exploration))

- **CogniTeam Image Rotate/Flip**: This image allows you to rotate and/or flip images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/image-rotate-filp))

- **CogniTeam Person Follower Depth**: This image allows you to follow people in 3D images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/cogniteam-person-follower-depth))

- **CogniTeam Person Follower RGB**: This image allows you to follow people in RGB images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/person_follower_rgb_camera))

- **CogniTeam Person Follower Sensor Fusion**: This image allows you to follow people in a fusion of depth and RGB images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/cogniteam-person-follower-sensor-fusion))

- **CogniTeam Skeleton Gestures**: This image allows you to detect and track gestures in 3D images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/cogniteam-skeleton-gestures))

- **Custom Message Talker/Listener**: This image allows you to send and receive arbitrary messages with ROS services. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/custome-message-tutorial))

- **Custom ROS Service**: This image allows you to write and deploy a custom ROS service. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/custom-ros-service))
- **DeeGoo FPV/GPS**: This image allows you to set up a programmable drone over an FPV/GPS system. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/deegoo-fpv-gps))
- **Depth 2 Grayscale**: This image allows you to convert depth images to compressed grayscale images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/depth_to_compressed_grayscale_img))
- **Depth 2 PCloud**: This image allows you to convert depth images to point clouds. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/depth_to_pcloud_scan))
- **Faces & Landmarks (MediaPipe/AMD)**: This image allows you to extract faces and landmarks from images. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/faces-landsmarks-mediapipe-amd))
- **Generic Webcam**: This image allows you to set up a generic webcam for ROS applications. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/opencv-webcam-driver))
- **Gmapping**: This image allows you to use the gmapping algorithm to create an occupancy map. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/gmapping))
- **Hamster Driver**: This image allows you to connect to the RaspberryHamster robot. It is available for Linux/amd64 and Linux/arm64. ([link](https://hub.docker.com/r/cognimbus/hamster-driver))- [--hamster-v8-environment (linux/amd64 , linux/arm64)](https://hub.docker.com/r/cognimbus/hamster-v8-environment)
- 
- **hamster-wandering**: This image allows you to quickly set up a hamster-wandering simulation on either an AMD64 machine or ARM64 device. Simply download the pre-built image and then build and deploy the application. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/hamster-wandering)

- **hands_pose_detector**: This Docker Hub image is designed to easily detect hand poses, allowing you to quickly and accurately detect and track hand movements. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/hands-pose-detection)

- **hector-mapping**: This Docker Hub image is designed to provide hector-mapping, a powerful SLAM system used for pathfinding and obstacle avoidance. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/hector-mapping)

- **hokuyo**: This Docker Hub image is designed to enable you to quickly and accurately set up a Hokuyo LiDAR scan for object detection, mapping, and navigation. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/hokuyo)

- **image-republisher**: This Docker Hub image allows you to quickly and easily republish images from topic to topic. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/image-republisher)

- **image-topic-to-rtsp**: This image allows you to quickly and easily convert image topics to RTSP streams for streaming, broadcasting, and remote access. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/image-topic-to-rtsp)

- **imu-filter-madgwick**: This image is designed to provide an IMU filter based on Madgwick's filter, providing smooth and accurate real time orientation estimation. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/imu-filter-madgwick)

- **isaac-skeleton-viewer/isaac-skeleton-viewer**: This Docker Hub image allows you to quickly and easily set up an Isaac skeleton viewer for viewing skeleton captures from various sensors. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/isaac-skeleton-ros)

- **jetson-isaac-skeleton**: This Docker Hub image provides the ability to view skeleton data on the NVIDIA Jetson platform for easy development and debugging. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/jetson-isaac-skeleton-ros)

- **joystick-teleop-twist**: This Docker Hub image allows you to quickly and easily control robots with a standard joystick, providing a faster and more intuitive way of controlling robots. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/joystick-teleop)

- **kobuki-driver**: This Docker Hub image is designed to enable you to quickly and easily control a Kobuki robot over a ROS network. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/kobuki_driver)

- **lizi-driver**: This Docker Hub image allows you to quickly and easily control and monitor a Lizi robot for easy development, debugging, and deployment. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/lizi-driver)

- **lsd-lidar-c16**: This Docker Hub image is designed to quickly and easily set up a powerful 16-channel LiDAR scan for obstacle detection and avoidance. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/lsd-lidar-c16)

- **lynx**: This image is designed to quickly and easily set up a Lynx robot for navigation, mapping, and obstacle avoidance. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/lynx)

- **m-exploration**: This image is designed to quickly and easily set up an exploration robot for mapping and exploration. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/m_exploration)

- **map-server**: This Docker Hub image provides a powerful map server for quickly and easily building, serving, and displaying maps. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/map-server)

- **mir-driver**: This image is designed to quickly and easily control a DFKI Mir robot over a ROS network. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/dfki_mir_driver)

- **move-base-navigation**: This Docker Hub image is designed to quickly and easily set up a base station for autonomous navigation and path planning. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/move-base)

- **novatel-gps**: This image is designed to quickly and easily set up a Novatel GPS system for exact location data. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/novatel-gps)

- **odom-republisher/odom-republisher**: This Docker Hub image allows you to quickly and easily republish the odometry topic from one robot to another. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/rover-odom-republisher)

- **omron-ld60-driver**: This Docker Hub image is designed to quickly and easily control an Omron LD60 robot over a ROS network. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/omron_ld60_driver)

- **openvino**: This Docker Hub image is designed to quickly and easily build, deploy, and test applications using Intel® OpenVINO™ toolkit. [(Docker Hub link)](https://hub.docker.com/r/cognimbus/openvino)

- The [--tf-from-rviz](https://hub.docker.com/r/cognimbus/tf-from-rviz) image provides an interface for creating transform frames from RViz, the popular 3D visualization tool.

- The [--tf2-from-rviz](https://hub.docker.com/r/cognimbus/tf2-from-rviz) image provides a tf2 (Tensor Flow 2) compatible data source for RViz.

- The [--tf2-web-republisher](https://hub.docker.com/r/cognimbus/tf2-web-republisher) image allows users to republish messages from the tf2 web service as ros (Robot Operating System) messages.
- The [turtlebot-navigation (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/turtlebot3-wafflepi) image is intended for users of the turtlebot3 wafflepi robot platform. It provides an interface for configuring turtlebot navigation.
- The [--urdf-to-graphviz](https://hub.docker.com/r/cognimbus/urdf-to-graphviz) image provides a command line interface for visualizing urdf models in dot-language syntax.
- The [usb-camera (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/usb-cam) image provides an interface for configuring usb cameras on linux platforms.
- The [--usb-microphone](https://hub.docker.com/r/cognimbus/usb-microphone) image allows users to connect and configure USB microphones with ROS.

- The [v2-joystick (linux/amd64, linux/arm64)](https://hub.docker.com/r/cognimbus/joystick-teleop) image provides an interface for operating robots with a v2 joystick.

- The [--video-to-rgb](https://hub.docker.com/r/cognimbus/video-to-rgb) image enables users to easily convert video streams to rgb images.

- The [--vins-mono-kitti](https://hub.docker.com/r/cognimbus/vins-mono-kitti) image provides an interface for visual-inertial state estimation (VIO) based on the KITTI dataset.

- The [--vins-mono-pgo](https://hub.docker.com/r/cognimbus/vins-mono-pgo) image provides an implementation of part to whole registration based on the pgo dataset.

- The [--vins-mono-realsense](https://hub.docker.com/r/cognimbus/vins-mono-realsense) image provides an interface for realsense cameras in the VINS-Mono framework.

- The [--vins-mono-vio](https://hub.docker.com/r/cognimbus/vins-mono-vio) image provides an interface for visual-inertial state estimation (VIO).

- The [--vins-mono-zr300](https://hub.docker.com/r/cognimbus/vins-mono-zr300) image provides an interface for the ZED-R300 camera in the VINS-Mono framework.

- The [--vins-mono-zr300-pgo](https://hub.docker.com/r/cognimbus/vins-mono-zr300-pgo) image provides an implementation of part to whole registration for the ZED-R300 camera using the PGO dataset.

- The [--vins-mono-zr300-vio](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio) image provides an interface for visual-inertial state estimation (VIO) for the ZED-R300 camera.

- The [--vins-mono-zr300-vio-realsense](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-realsense) image provides an interface for Realsense cameras in combination with the ZED-R300 camera in the VINS-Mono framework.

- The [--vins-mono-zr300-vio-t265](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265) image provides an interface for the Intel Realsense T265 in combination with the ZED-R300 camera in the VINS-Mono framework.

- The [--vins-mono-zr300-vio-t265-realsense](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense) image provides an interface for the Intel Realsense cameras (T265 and ZED-R300) in the VINS-Mono framework.

- The [--vins-mono-zr300-vio-t265-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-rviz) image provides an interface for visualizing the output of VINS-Mono with RViz.

- The [--vins-mono-zr300-vio-t265-realsense-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz) image provides an interface for visualizing the outputs of the Intel Realsense (T265 and ZED-R300) cameras with RViz.

- The [--vins-mono-zr300-vio-t265-realsense-rviz-pgo](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz-pgo) image provides an interface for visualizing part to whole registration with the Intel Realsense cameras (T265 and ZED-R300) in RViz.

- The [--vins-mono-zr300-vio-t265-realsense-rviz](https://hub.docker.com/r/cognimbus/vins-mono-zr300-vio-t265-realsense-rviz) image provides an interface for visualizing the outputs of the Intel Realsense (T265 and ZED-R300) cameras with RViz, offering users an easy way to configure and view their robot's environment.- 
