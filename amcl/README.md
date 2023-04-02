# AMCL

<img src="./amcl/amcl.png" alt="amcl" width="400"/>

* ROS project page <a href="http://wiki.ros.org/amcl">http://wiki.ros.org/amcl</a>
* Dockerhub image https://hub.docker.com/r/cognimbus/amcl
* Supported architectures <b>amd64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus

# Short description
* amcl is a probabilistic localization system for a robot moving in 2D. It implements the adaptive (or KLD-sampling) Monte Carlo localization approach (as described by Dieter Fox), which uses a particle filter to track the pose of a robot against a known map

# Example usage
```
docker run -it cognimbus/amcl
```


