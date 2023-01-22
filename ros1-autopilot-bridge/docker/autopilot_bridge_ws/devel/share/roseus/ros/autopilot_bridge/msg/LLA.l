;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::LLA)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'LLA (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::LLA")
  (make-package "AUTOPILOT_BRIDGE::LLA"))

(in-package "ROS")
;;//! \htmlinclude LLA.msg.html


(defclass autopilot_bridge::LLA
  :super ros::object
  :slots (_lat _lon _alt ))

(defmethod autopilot_bridge::LLA
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
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
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
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
   ;;
   self)
  )

(setf (get autopilot_bridge::LLA :md5sum-) "800b265188e13fdc7e121024d9b6fa27")
(setf (get autopilot_bridge::LLA :datatype-) "autopilot_bridge/LLA")
(setf (get autopilot_bridge::LLA :definition-)
      "float64 lat
float64 lon
float64 alt

")



(provide :autopilot_bridge/LLA "800b265188e13fdc7e121024d9b6fa27")


