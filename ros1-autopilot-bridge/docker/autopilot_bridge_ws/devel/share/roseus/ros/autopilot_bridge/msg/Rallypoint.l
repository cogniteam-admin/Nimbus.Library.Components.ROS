;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Rallypoint)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Rallypoint (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYPOINT")
  (make-package "AUTOPILOT_BRIDGE::RALLYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Rallypoint.msg.html


(defclass autopilot_bridge::Rallypoint
  :super ros::object
  :slots (_lat _lon _alt _break_alt _land_dir _flags ))

(defmethod autopilot_bridge::Rallypoint
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:break_alt __break_alt) 0.0)
    ((:land_dir __land_dir) 0.0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _break_alt (float __break_alt))
   (setq _land_dir (float __land_dir))
   (setq _flags (round __flags))
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
  (:break_alt
   (&optional __break_alt)
   (if __break_alt (setq _break_alt __break_alt)) _break_alt)
  (:land_dir
   (&optional __land_dir)
   (if __land_dir (setq _land_dir __land_dir)) _land_dir)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; float64 _break_alt
    8
    ;; float64 _land_dir
    8
    ;; uint8 _flags
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
     ;; float64 _break_alt
       (sys::poke _break_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _land_dir
       (sys::poke _land_dir (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _flags
       (write-byte _flags s)
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
   ;; float64 _break_alt
     (setq _break_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _land_dir
     (setq _land_dir (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get autopilot_bridge::Rallypoint :md5sum-) "18ae3a5294644e7830f081afbc682a08")
(setf (get autopilot_bridge::Rallypoint :datatype-) "autopilot_bridge/Rallypoint")
(setf (get autopilot_bridge::Rallypoint :definition-)
      "float64 lat
float64 lon
float64 alt
float64 break_alt
float64 land_dir
uint8 flags

")



(provide :autopilot_bridge/Rallypoint "18ae3a5294644e7830f081afbc682a08")


