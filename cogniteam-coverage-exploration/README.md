# AMCL

<img src="/cogniteam_coverage_exploration/cogniteam_coverage_exploration.jpg" alt="coverage_exploration" width="400"/>

* Dockerhub image https://hub.docker.com/repository/docker/cognimbus/cogniteam-coverage-exploration/general
* Supported architectures <b>amd64, amd64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus

# Short description
* Cogniteam exploration is a simple coverage heuristic algorithm that can be used while mapping


# Example usage
```
docker run -it cognimbus/amcl roslaunch exploration exploration.launch map_frame:=${map_frame}
        searching_radius:=${searching_radius} rate:=${rate} map_dilation_level_m:=${map_dilation_level_m}
        min_percent_coverage:=${min_percent_coverage}
```


