;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::RallyGetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'RallyGetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYGETALL")
  (make-package "AUTOPILOT_BRIDGE::RALLYGETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYGETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::RALLYGETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::RALLYGETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::RALLYGETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::RallyGetAllRequest
  :super ros::object
  :slots ())

(defmethod autopilot_bridge::RallyGetAllRequest
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

(defclass autopilot_bridge::RallyGetAllResponse
  :super ros::object
  :slots (_ok _points ))

(defmethod autopilot_bridge::RallyGetAllResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Rallypoint :init) r)) r))
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
    ;; autopilot_bridge/Rallypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; autopilot_bridge/Rallypoint[] _points
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

(defclass autopilot_bridge::RallyGetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::RallyGetAll :md5sum-) "a2828381673d0b45c532f4eea68ab4e0")
(setf (get autopilot_bridge::RallyGetAll :datatype-) "autopilot_bridge/RallyGetAll")
(setf (get autopilot_bridge::RallyGetAll :request) autopilot_bridge::RallyGetAllRequest)
(setf (get autopilot_bridge::RallyGetAll :response) autopilot_bridge::RallyGetAllResponse)

(defmethod autopilot_bridge::RallyGetAllRequest
  (:response () (instance autopilot_bridge::RallyGetAllResponse :init)))

(setf (get autopilot_bridge::RallyGetAllRequest :md5sum-) "a2828381673d0b45c532f4eea68ab4e0")
(setf (get autopilot_bridge::RallyGetAllRequest :datatype-) "autopilot_bridge/RallyGetAllRequest")
(setf (get autopilot_bridge::RallyGetAllRequest :definition-)
      "---
bool ok
Rallypoint[] points


================================================================================
MSG: autopilot_bridge/Rallypoint
float64 lat
float64 lon
float64 alt
float64 break_alt
float64 land_dir
uint8 flags
")

(setf (get autopilot_bridge::RallyGetAllResponse :md5sum-) "a2828381673d0b45c532f4eea68ab4e0")
(setf (get autopilot_bridge::RallyGetAllResponse :datatype-) "autopilot_bridge/RallyGetAllResponse")
(setf (get autopilot_bridge::RallyGetAllResponse :definition-)
      "---
bool ok
Rallypoint[] points


================================================================================
MSG: autopilot_bridge/Rallypoint
float64 lat
float64 lon
float64 alt
float64 break_alt
float64 land_dir
uint8 flags
")



(provide :autopilot_bridge/RallyGetAll "a2828381673d0b45c532f4eea68ab4e0")


