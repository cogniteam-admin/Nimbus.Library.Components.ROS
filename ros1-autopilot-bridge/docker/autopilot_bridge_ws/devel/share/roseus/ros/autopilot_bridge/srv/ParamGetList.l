;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::ParamGetList)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'ParamGetList (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGETLIST")
  (make-package "AUTOPILOT_BRIDGE::PARAMGETLIST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGETLISTREQUEST")
  (make-package "AUTOPILOT_BRIDGE::PARAMGETLISTREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGETLISTRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::PARAMGETLISTRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::ParamGetListRequest
  :super ros::object
  :slots (_name ))

(defmethod autopilot_bridge::ParamGetListRequest
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name __name)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::ParamGetListResponse
  :super ros::object
  :slots (_param ))

(defmethod autopilot_bridge::ParamGetListResponse
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

(defclass autopilot_bridge::ParamGetList
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::ParamGetList :md5sum-) "e2cef5924ec02ac5c653b10adb157290")
(setf (get autopilot_bridge::ParamGetList :datatype-) "autopilot_bridge/ParamGetList")
(setf (get autopilot_bridge::ParamGetList :request) autopilot_bridge::ParamGetListRequest)
(setf (get autopilot_bridge::ParamGetList :response) autopilot_bridge::ParamGetListResponse)

(defmethod autopilot_bridge::ParamGetListRequest
  (:response () (instance autopilot_bridge::ParamGetListResponse :init)))

(setf (get autopilot_bridge::ParamGetListRequest :md5sum-) "e2cef5924ec02ac5c653b10adb157290")
(setf (get autopilot_bridge::ParamGetListRequest :datatype-) "autopilot_bridge/ParamGetListRequest")
(setf (get autopilot_bridge::ParamGetListRequest :definition-)
      "string[] name
---
ParamPair[] param


================================================================================
MSG: autopilot_bridge/ParamPair
string name
float64 value
")

(setf (get autopilot_bridge::ParamGetListResponse :md5sum-) "e2cef5924ec02ac5c653b10adb157290")
(setf (get autopilot_bridge::ParamGetListResponse :datatype-) "autopilot_bridge/ParamGetListResponse")
(setf (get autopilot_bridge::ParamGetListResponse :definition-)
      "string[] name
---
ParamPair[] param


================================================================================
MSG: autopilot_bridge/ParamPair
string name
float64 value
")



(provide :autopilot_bridge/ParamGetList "e2cef5924ec02ac5c653b10adb157290")


