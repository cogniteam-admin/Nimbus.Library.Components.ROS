;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Heartbeat)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Heartbeat (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::HEARTBEAT")
  (make-package "AUTOPILOT_BRIDGE::HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude Heartbeat.msg.html


(defclass autopilot_bridge::Heartbeat
  :super ros::object
  :slots (_counter ))

(defmethod autopilot_bridge::Heartbeat
  (:init
   (&key
    ((:counter __counter) 0)
    )
   (send-super :init)
   (setq _counter (round __counter))
   self)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:serialization-length
   ()
   (+
    ;; uint32 _counter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _counter
       (write-long _counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _counter
     (setq _counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autopilot_bridge::Heartbeat :md5sum-) "edfa4d08cb5e6d4c5fd223930476506d")
(setf (get autopilot_bridge::Heartbeat :datatype-) "autopilot_bridge/Heartbeat")
(setf (get autopilot_bridge::Heartbeat :definition-)
      "uint32 counter

")



(provide :autopilot_bridge/Heartbeat "edfa4d08cb5e6d4c5fd223930476506d")


