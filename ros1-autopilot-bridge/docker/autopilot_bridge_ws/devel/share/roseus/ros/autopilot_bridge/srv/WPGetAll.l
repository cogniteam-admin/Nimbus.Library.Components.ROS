;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::WPGetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'WPGetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETALL")
  (make-package "AUTOPILOT_BRIDGE::WPGETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::WPGETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::WPGETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::WPGETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::WPGetAllRequest
  :super ros::object
  :slots ())

(defmethod autopilot_bridge::WPGetAllRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass autopilot_bridge::WPGetAllResponse
  :super ros::object
  :slots (_ok _points ))

(defmethod autopilot_bridge::WPGetAllResponse
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

(defclass autopilot_bridge::WPGetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::WPGetAll :md5sum-) "61fd937ff9a773d87567a2f8da6a06ff")
(setf (get autopilot_bridge::WPGetAll :datatype-) "autopilot_bridge/WPGetAll")
(setf (get autopilot_bridge::WPGetAll :request) autopilot_bridge::WPGetAllRequest)
(setf (get autopilot_bridge::WPGetAll :response) autopilot_bridge::WPGetAllResponse)

(defmethod autopilot_bridge::WPGetAllRequest
  (:response () (instance autopilot_bridge::WPGetAllResponse :init)))

(setf (get autopilot_bridge::WPGetAllRequest :md5sum-) "61fd937ff9a773d87567a2f8da6a06ff")
(setf (get autopilot_bridge::WPGetAllRequest :datatype-) "autopilot_bridge/WPGetAllRequest")
(setf (get autopilot_bridge::WPGetAllRequest :definition-)
      "---
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

(setf (get autopilot_bridge::WPGetAllResponse :md5sum-) "61fd937ff9a773d87567a2f8da6a06ff")
(setf (get autopilot_bridge::WPGetAllResponse :datatype-) "autopilot_bridge/WPGetAllResponse")
(setf (get autopilot_bridge::WPGetAllResponse :definition-)
      "---
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



(provide :autopilot_bridge/WPGetAll "61fd937ff9a773d87567a2f8da6a06ff")


