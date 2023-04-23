# Bosch imu driver

<img src="./bosch-imu-driver/bosch-imu-driver.jpeg" alt="bosch-imu-driver" width="400"/>

* Github project page <a href="https://github.com/mdrwiega/bosch_imu_driver">https://github.com/mdrwiega/bosch_imu_driver</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/bosch-imu-driver
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* A driver for the sensor IMU Bosch BNO055. It was implemented only the UART communication interface (correct sensor mode should be selected).

# Example usage
```
docker run -it --privileged cognimbus/bosch-imu-driver roslaunch rr_bosch_bno055_imu example.launch
```


