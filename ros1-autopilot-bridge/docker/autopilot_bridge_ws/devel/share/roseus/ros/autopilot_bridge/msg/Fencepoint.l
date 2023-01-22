;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Fencepoint)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Fencepoint (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::FENCEPOINT")
  (make-package "AUTOPILOT_BRIDGE::FENCEPOINT"))

(in-package "ROS")
;;//! \htmlinclude Fencepoint.msg.html


(defclass autopilot_bridge::Fencepoint
  :super ros::object
  :slots (_lat _lon ))

(defmethod autopilot_bridge::Fencepoint
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autopilot_bridge::Fencepoint :md5sum-) "deb12644498d4b5511a84dbd9af1e283")
(setf (get autopilot_bridge::Fencepoint :datatype-) "autopilot_bridge/Fencepoint")
(setf (get autopilot_bridge::Fencepoint :definition-)
      "float64 lat
float64 lon

")



(provide :autopilot_bridge/Fencepoint "deb12644498d4b5511a84dbd9af1e283")


