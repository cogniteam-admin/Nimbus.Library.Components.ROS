# Bboxes to 3D markers

<img src="./bboxes-to-3d-markers/Cogniteam_CMYK_Social_white_on_aubergine.jpg" alt="bboxes-to-3d-markers" width="400"/>

* Dockerhub image https://hub.docker.com/repository/docker/cognimbus/bounding_boxes_objects_to_marker_array
* Supported architectures <b>amd64/arm64</b>
* ROS version <b>melodic</b>


# Component
Image of the component in nimbus
Link to component in nimbus hub

# Short description
* Given depth img and b-boxes, create 3d markers array.

# Example usage
```
docker run -it cognimbus/bounding_boxes_objects_to_marker_array roslaunch objects_pose_estimation objects_poses_estimations.launch 
```


