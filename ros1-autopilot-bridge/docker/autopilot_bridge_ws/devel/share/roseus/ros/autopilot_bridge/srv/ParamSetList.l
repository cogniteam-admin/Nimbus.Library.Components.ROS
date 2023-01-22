;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::ParamSetList)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'ParamSetList (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSETLIST")
  (make-package "AUTOPILOT_BRIDGE::PARAMSETLIST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSETLISTREQUEST")
  (make-package "AUTOPILOT_BRIDGE::PARAMSETLISTREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSETLISTRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::PARAMSETLISTRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::ParamSetListRequest
  :super ros::object
  :slots (_param ))

(defmethod autopilot_bridge::ParamSetListRequest
  (:init
   (&key
    ((:param __param) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::ParamPair :init) r)) r))
    )
   (send-super :init)
   (setq _param __param)
   self)
  (:param
   (&rest __param)
   (if (keywordp (car __param))
       (send* _param __param)
     (progn
       (if __param (setq _param (car __param)))
       _param)))
  (:serialization-length
   ()
   (+
    ;; autopilot_bridge/ParamPair[] _param
    (apply #'+ (send-all _param :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/ParamPair[] _param
     (write-long (length _param) s)
     (dolist (elem _param)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/ParamPair[] _param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param (let (r) (dotimes (i n) (push (instance autopilot_bridge::ParamPair :init) r)) r))
     (dolist (elem- _param)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::ParamSetListResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::ParamSetListResponse
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

(defclass autopilot_bridge::ParamSetList
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::ParamSetList :md5sum-) "7c20195a6434b00060c5d34397ef8702")
(setf (get autopilot_bridge::ParamSetList :datatype-) "autopilot_bridge/ParamSetList")
(setf (get autopilot_bridge::ParamSetList :request) autopilot_bridge::ParamSetListRequest)
(setf (get autopilot_bridge::ParamSetList :response) autopilot_bridge::ParamSetListResponse)

(defmethod autopilot_bridge::ParamSetListRequest
  (:response () (instance autopilot_bridge::ParamSetListResponse :init)))

(setf (get autopilot_bridge::ParamSetListRequest :md5sum-) "7c20195a6434b00060c5d34397ef8702")
(setf (get autopilot_bridge::ParamSetListRequest :datatype-) "autopilot_bridge/ParamSetListRequest")
(setf (get autopilot_bridge::ParamSetListRequest :definition-)
      "ParamPair[] param

================================================================================
MSG: autopilot_bridge/ParamPair
string name
float64 value
---
bool ok

")

(setf (get autopilot_bridge::ParamSetListResponse :md5sum-) "7c20195a6434b00060c5d34397ef8702")
(setf (get autopilot_bridge::ParamSetListResponse :datatype-) "autopilot_bridge/ParamSetListResponse")
(setf (get autopilot_bridge::ParamSetListResponse :definition-)
      "ParamPair[] param

================================================================================
MSG: autopilot_bridge/ParamPair
string name
float64 value
---
bool ok

")



(provide :autopilot_bridge/ParamSetList "7c20195a6434b00060c5d34397ef8702")


