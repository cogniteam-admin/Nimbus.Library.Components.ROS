;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::WPGetRange)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'WPGetRange (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETRANGE")
  (make-package "AUTOPILOT_BRIDGE::WPGETRANGE"))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETRANGEREQUEST")
  (make-package "AUTOPILOT_BRIDGE::WPGETRANGEREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETRANGERESPONSE")
  (make-package "AUTOPILOT_BRIDGE::WPGETRANGERESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::WPGetRangeRequest
  :super ros::object
  :slots (_low _high ))

(defmethod autopilot_bridge::WPGetRangeRequest
  (:init
   (&key
    ((:low __low) 0)
    ((:high __high) 0)
    )
   (send-super :init)
   (setq _low (round __low))
   (setq _high (round __high))
   self)
  (:low
   (&optional __low)
   (if __low (setq _low __low)) _low)
  (:high
   (&optional __high)
   (if __high (setq _high __high)) _high)
  (:serialization-length
   ()
   (+
    ;; uint16 _low
    2
    ;; uint16 _high
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _low
       (write-word _low s)
     ;; uint16 _high
       (write-word _high s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _low
     (setq _low (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _high
     (setq _high (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass autopilot_bridge::WPGetRangeResponse
  :super ros::object
  :slots (_ok _points ))

(defmethod autopilot_bridge::WPGetRangeResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _points __points)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; autopilot_bridge/Waypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; autopilot_bridge/Waypoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; autopilot_bridge/Waypoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance autopilot_bridge::Waypoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::WPGetRange
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::WPGetRange :md5sum-) "a5c104ffb8d6e855f74938b0261a09c9")
(setf (get autopilot_bridge::WPGetRange :datatype-) "autopilot_bridge/WPGetRange")
(setf (get autopilot_bridge::WPGetRange :request) autopilot_bridge::WPGetRangeRequest)
(setf (get autopilot_bridge::WPGetRange :response) autopilot_bridge::WPGetRangeResponse)

(defmethod autopilot_bridge::WPGetRangeRequest
  (:response () (instance autopilot_bridge::WPGetRangeResponse :init)))

(setf (get autopilot_bridge::WPGetRangeRequest :md5sum-) "a5c104ffb8d6e855f74938b0261a09c9")
(setf (get autopilot_bridge::WPGetRangeRequest :datatype-) "autopilot_bridge/WPGetRangeRequest")
(setf (get autopilot_bridge::WPGetRangeRequest :definition-)
      "uint16 low
uint16 high
---
bool ok
Waypoint[] points


================================================================================
MSG: autopilot_bridge/Waypoint
uint16 seq
uint8 frame
uint16 command
bool current
bool autocontinue
float64 param1
float64 param2
float64 param3
float64 param4
float64 x
float64 y
float64 z
")

(setf (get autopilot_bridge::WPGetRangeResponse :md5sum-) "a5c104ffb8d6e855f74938b0261a09c9")
(setf (get autopilot_bridge::WPGetRangeResponse :datatype-) "autopilot_bridge/WPGetRangeResponse")
(setf (get autopilot_bridge::WPGetRangeResponse :definition-)
      "uint16 low
uint16 high
---
bool ok
Waypoint[] points


================================================================================
MSG: autopilot_bridge/Waypoint
uint16 seq
uint8 frame
uint16 command
bool current
bool autocontinue
float64 param1
float64 param2
float64 param3
float64 param4
float64 x
float64 y
float64 z
")



(provide :autopilot_bridge/WPGetRange "a5c104ffb8d6e855f74938b0261a09c9")


