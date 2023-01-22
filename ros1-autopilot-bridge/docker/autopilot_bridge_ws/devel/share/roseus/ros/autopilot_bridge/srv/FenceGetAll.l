;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::FenceGetAll)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'FenceGetAll (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::FENCEGETALL")
  (make-package "AUTOPILOT_BRIDGE::FENCEGETALL"))
(unless (find-package "AUTOPILOT_BRIDGE::FENCEGETALLREQUEST")
  (make-package "AUTOPILOT_BRIDGE::FENCEGETALLREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::FENCEGETALLRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::FENCEGETALLRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::FenceGetAllRequest
  :super ros::object
  :slots ())

(defmethod autopilot_bridge::FenceGetAllRequest
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

(defclass autopilot_bridge::FenceGetAllResponse
  :super ros::object
  :slots (_ok _points ))

(defmethod autopilot_bridge::FenceGetAllResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::Fencepoint :init) r)) r))
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
    ;; autopilot_bridge/Fencepoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; autopilot_bridge/Fencepoint[] _points
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

(defclass autopilot_bridge::FenceGetAll
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::FenceGetAll :md5sum-) "3af4de476ae820ab7043ee91d5577ce1")
(setf (get autopilot_bridge::FenceGetAll :datatype-) "autopilot_bridge/FenceGetAll")
(setf (get autopilot_bridge::FenceGetAll :request) autopilot_bridge::FenceGetAllRequest)
(setf (get autopilot_bridge::FenceGetAll :response) autopilot_bridge::FenceGetAllResponse)

(defmethod autopilot_bridge::FenceGetAllRequest
  (:response () (instance autopilot_bridge::FenceGetAllResponse :init)))

(setf (get autopilot_bridge::FenceGetAllRequest :md5sum-) "3af4de476ae820ab7043ee91d5577ce1")
(setf (get autopilot_bridge::FenceGetAllRequest :datatype-) "autopilot_bridge/FenceGetAllRequest")
(setf (get autopilot_bridge::FenceGetAllRequest :definition-)
      "---
bool ok
Fencepoint[] points


================================================================================
MSG: autopilot_bridge/Fencepoint
float64 lat
float64 lon
")

(setf (get autopilot_bridge::FenceGetAllResponse :md5sum-) "3af4de476ae820ab7043ee91d5577ce1")
(setf (get autopilot_bridge::FenceGetAllResponse :datatype-) "autopilot_bridge/FenceGetAllResponse")
(setf (get autopilot_bridge::FenceGetAllResponse :definition-)
      "---
bool ok
Fencepoint[] points


================================================================================
MSG: autopilot_bridge/Fencepoint
float64 lat
float64 lon
")



(provide :autopilot_bridge/FenceGetAll "3af4de476ae820ab7043ee91d5577ce1")


