;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::GeoPoint)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'GeoPoint (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::GEOPOINT")
  (make-package "AUTOPILOT_BRIDGE::GEOPOINT"))

(in-package "ROS")
;;//! \htmlinclude GeoPoint.msg.html


(defclass autopilot_bridge::GeoPoint
  :super ros::object
  :slots (_lat _lon _alt _rel_alt _using_alt _using_rel_alt ))

(defmethod autopilot_bridge::GeoPoint
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:rel_alt __rel_alt) 0.0)
    ((:using_alt __using_alt) nil)
    ((:using_rel_alt __using_rel_alt) nil)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _rel_alt (float __rel_alt))
   (setq _using_alt __using_alt)
   (setq _using_rel_alt __using_rel_alt)
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:rel_alt
   (&optional __rel_alt)
   (if __rel_alt (setq _rel_alt __rel_alt)) _rel_alt)
  (:using_alt
   (&optional __using_alt)
   (if __using_alt (setq _using_alt __using_alt)) _using_alt)
  (:using_rel_alt
   (&optional __using_rel_alt)
   (if __using_rel_alt (setq _using_rel_alt __using_rel_alt)) _using_rel_alt)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; float64 _rel_alt
    8
    ;; bool _using_alt
    1
    ;; bool _using_rel_alt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_alt
       (sys::poke _rel_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _using_alt
       (if _using_alt (write-byte -1 s) (write-byte 0 s))
     ;; bool _using_rel_alt
       (if _using_rel_alt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_alt
     (setq _rel_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _using_alt
     (setq _using_alt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _using_rel_alt
     (setq _using_rel_alt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get autopilot_bridge::GeoPoint :md5sum-) "c121d48ffba7006a7ab486f309ebbbb8")
(setf (get autopilot_bridge::GeoPoint :datatype-) "autopilot_bridge/GeoPoint")
(setf (get autopilot_bridge::GeoPoint :definition-)
      "# WGS84 latitude, longitude, and MSL altitude
float64 lat
float64 lon
float64 alt

# Relative altitude (custom definable, but generally set w.r.t. some home point)
float64 rel_alt

# Flag field for which altitudes are valid
bool using_alt
bool using_rel_alt

")



(provide :autopilot_bridge/GeoPoint "c121d48ffba7006a7ab486f309ebbbb8")


