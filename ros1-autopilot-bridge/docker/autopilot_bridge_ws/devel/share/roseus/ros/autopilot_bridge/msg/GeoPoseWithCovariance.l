;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::GeoPoseWithCovariance)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'GeoPoseWithCovariance (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::GEOPOSEWITHCOVARIANCE")
  (make-package "AUTOPILOT_BRIDGE::GEOPOSEWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude GeoPoseWithCovariance.msg.html


(defclass autopilot_bridge::GeoPoseWithCovariance
  :super ros::object
  :slots (_pose _covariance ))

(defmethod autopilot_bridge::GeoPoseWithCovariance
  (:init
   (&key
    ((:pose __pose) (instance autopilot_bridge::GeoPose :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; autopilot_bridge/GeoPose _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/GeoPose _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/GeoPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get autopilot_bridge::GeoPoseWithCovariance :md5sum-) "49607a12d5ec103bbc7dc81cc88d8763")
(setf (get autopilot_bridge::GeoPoseWithCovariance :datatype-) "autopilot_bridge/GeoPoseWithCovariance")
(setf (get autopilot_bridge::GeoPoseWithCovariance :definition-)
      "# Pose using lat/lon/alt in place of x/y/z plus two altitude fields
GeoPose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: autopilot_bridge/GeoPose
# 3-D point using lat/lon/alt, with two altitude options
GeoPoint position

# Quaternion orientation
geometry_msgs/Quaternion orientation

================================================================================
MSG: autopilot_bridge/GeoPoint
# WGS84 latitude, longitude, and MSL altitude
float64 lat
float64 lon
float64 alt

# Relative altitude (custom definable, but generally set w.r.t. some home point)
float64 rel_alt

# Flag field for which altitudes are valid
bool using_alt
bool using_rel_alt

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :autopilot_bridge/GeoPoseWithCovariance "49607a12d5ec103bbc7dc81cc88d8763")


