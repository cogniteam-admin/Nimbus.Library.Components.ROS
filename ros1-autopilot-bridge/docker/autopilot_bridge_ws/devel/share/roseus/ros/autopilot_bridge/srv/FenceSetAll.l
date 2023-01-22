;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::FenceSetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'FenceSetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::FENCESETALL")
  (make-package "AUTOPILOT_BRIDGE::FENCESETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::FENCESETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::FENCESETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::FENCESETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::FENCESETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::FenceSetAllRequest
  :super ros::object
  :slots (_points ))

(defmethod autopilot_bridge::FenceSetAllRequest
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Fencepoint :init) r)) r))
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
    ;; autopilot_bridge/Fencepoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/Fencepoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/Fencepoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance autopilot_bridge::Fencepoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::FenceSetAllResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::FenceSetAllResponse
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

(defclass autopilot_bridge::FenceSetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::FenceSetAll :md5sum-) "f88ef42c3c089842e6bb8c2306bcba9b")
(setf (get autopilot_bridge::FenceSetAll :datatype-) "autopilot_bridge/FenceSetAll")
(setf (get autopilot_bridge::FenceSetAll :request) autopilot_bridge::FenceSetAllRequest)
(setf (get autopilot_bridge::FenceSetAll :response) autopilot_bridge::FenceSetAllResponse)

(defmethod autopilot_bridge::FenceSetAllRequest
  (:response () (instance autopilot_bridge::FenceSetAllResponse :init)))

(setf (get autopilot_bridge::FenceSetAllRequest :md5sum-) "f88ef42c3c089842e6bb8c2306bcba9b")
(setf (get autopilot_bridge::FenceSetAllRequest :datatype-) "autopilot_bridge/FenceSetAllRequest")
(setf (get autopilot_bridge::FenceSetAllRequest :definition-)
      "Fencepoint[] points

================================================================================
MSG: autopilot_bridge/Fencepoint
float64 lat
float64 lon
---
bool ok

")

(setf (get autopilot_bridge::FenceSetAllResponse :md5sum-) "f88ef42c3c089842e6bb8c2306bcba9b")
(setf (get autopilot_bridge::FenceSetAllResponse :datatype-) "autopilot_bridge/FenceSetAllResponse")
(setf (get autopilot_bridge::FenceSetAllResponse :definition-)
      "Fencepoint[] points

================================================================================
MSG: autopilot_bridge/Fencepoint
float64 lat
float64 lon
---
bool ok

")



(provide :autopilot_bridge/FenceSetAll "f88ef42c3c089842e6bb8c2306bcba9b")


