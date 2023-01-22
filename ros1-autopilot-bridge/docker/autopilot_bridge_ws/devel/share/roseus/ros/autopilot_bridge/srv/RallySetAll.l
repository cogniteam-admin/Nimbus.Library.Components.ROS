;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::RallySetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'RallySetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYSETALL")
  (make-package "AUTOPILOT_BRIDGE::RALLYSETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYSETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::RALLYSETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYSETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::RALLYSETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::RallySetAllRequest
  :super ros::object
  :slots (_points ))

(defmethod autopilot_bridge::RallySetAllRequest
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Rallypoint :init) r)) r))
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
    ;; autopilot_bridge/Rallypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/Rallypoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/Rallypoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance autopilot_bridge::Rallypoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::RallySetAllResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::RallySetAllResponse
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

(defclass autopilot_bridge::RallySetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::RallySetAll :md5sum-) "3b61b953a20eeadfbf79e0c55e54fdea")
(setf (get autopilot_bridge::RallySetAll :datatype-) "autopilot_bridge/RallySetAll")
(setf (get autopilot_bridge::RallySetAll :request) autopilot_bridge::RallySetAllRequest)
(setf (get autopilot_bridge::RallySetAll :response) autopilot_bridge::RallySetAllResponse)

(defmethod autopilot_bridge::RallySetAllRequest
  (:response () (instance autopilot_bridge::RallySetAllResponse :init)))

(setf (get autopilot_bridge::RallySetAllRequest :md5sum-) "3b61b953a20eeadfbf79e0c55e54fdea")
(setf (get autopilot_bridge::RallySetAllRequest :datatype-) "autopilot_bridge/RallySetAllRequest")
(setf (get autopilot_bridge::RallySetAllRequest :definition-)
      "Rallypoint[] points

================================================================================
MSG: autopilot_bridge/Rallypoint
float64 lat
float64 lon
float64 alt
float64 break_alt
float64 land_dir
uint8 flags
---
bool ok

")

(setf (get autopilot_bridge::RallySetAllResponse :md5sum-) "3b61b953a20eeadfbf79e0c55e54fdea")
(setf (get autopilot_bridge::RallySetAllResponse :datatype-) "autopilot_bridge/RallySetAllResponse")
(setf (get autopilot_bridge::RallySetAllResponse :definition-)
      "Rallypoint[] points

================================================================================
MSG: autopilot_bridge/Rallypoint
float64 lat
float64 lon
float64 alt
float64 break_alt
float64 land_dir
uint8 flags
---
bool ok

")



(provide :autopilot_bridge/RallySetAll "3b61b953a20eeadfbf79e0c55e54fdea")


