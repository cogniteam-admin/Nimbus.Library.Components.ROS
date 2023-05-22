# Novatel-Gps

<img src="./novatel-gps/Novatel.jpg" alt="novatel-gps" width="400"/>

* Dockerhub image https://hub.docker.com/r/cognimbus/novatel-gps
* Supported architectures <b>arm64/amd64</b>
* ROS version <b>melodic
</b>

# Short description
* Novatel GPS driver
License: BSD

# Example usage
```
docker run -it --network=host cognimbus/novatel-gps roslaunch novatel_oem7_driver oem7_net.launch ip_address:=192.168.74.10 port:=6002 oem7_if:=Oem7ReceiverUdp
```

