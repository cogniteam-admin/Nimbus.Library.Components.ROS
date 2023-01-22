;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::WPSetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'WPSetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::WPSETALL")
  (make-package "AUTOPILOT_BRIDGE::WPSETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::WPSETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::WPSETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::WPSETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::WPSETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::WPSetAllRequest
  :super ros::object
  :slots (_points ))

(defmethod autopilot_bridge::WPSetAllRequest
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
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
    ;; autopilot_bridge/Waypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/Waypoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass autopilot_bridge::WPSetAllResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::WPSetAllResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass autopilot_bridge::WPSetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::WPSetAll :md5sum-) "ca7cf06c1f77e9786e36687dbdde93e2")
(setf (get autopilot_bridge::WPSetAll :datatype-) "autopilot_bridge/WPSetAll")
(setf (get autopilot_bridge::WPSetAll :request) autopilot_bridge::WPSetAllRequest)
(setf (get autopilot_bridge::WPSetAll :response) autopilot_bridge::WPSetAllResponse)

(defmethod autopilot_bridge::WPSetAllRequest
  (:response () (instance autopilot_bridge::WPSetAllResponse :init)))

(setf (get autopilot_bridge::WPSetAllRequest :md5sum-) "ca7cf06c1f77e9786e36687dbdde93e2")
(setf (get autopilot_bridge::WPSetAllRequest :datatype-) "autopilot_bridge/WPSetAllRequest")
(setf (get autopilot_bridge::WPSetAllRequest :definition-)
      "Waypoint[] points

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
---
bool ok

")

(setf (get autopilot_bridge::WPSetAllResponse :md5sum-) "ca7cf06c1f77e9786e36687dbdde93e2")
(setf (get autopilot_bridge::WPSetAllResponse :datatype-) "autopilot_bridge/WPSetAllResponse")
(setf (get autopilot_bridge::WPSetAllResponse :definition-)
      "Waypoint[] points

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
---
bool ok

")



(provide :autopilot_bridge/WPSetAll "ca7cf06c1f77e9786e36687dbdde93e2")


