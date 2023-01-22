;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::GeoPose)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'GeoPose (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::GEOPOSE")
  (make-package "AUTOPILOT_BRIDGE::GEOPOSE"))

(in-package "ROS")
;;//! \htmlinclude GeoPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass autopilot_bridge::GeoPose
  :super ros::object
  :slots (_position _orientation ))

(defmethod autopilot_bridge::GeoPose
  (:init
   (&key
    ((:position __position) (instance autopilot_bridge::GeoPoint :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; autopilot_bridge/GeoPoint _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/GeoPoint _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/GeoPoint _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get autopilot_bridge::GeoPose :md5sum-) "a73a1efca4f7df92e709875c74f317f9")
(setf (get autopilot_bridge::GeoPose :datatype-) "autopilot_bridge/GeoPose")
(setf (get autopilot_bridge::GeoPose :definition-)
      "# 3-D point using lat/lon/alt, with two altitude options
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



(provide :autopilot_bridge/GeoPose "a73a1efca4f7df92e709875c74f317f9")


