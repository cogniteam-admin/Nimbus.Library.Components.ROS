;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::ParamSet)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'ParamSet (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSET")
  (make-package "AUTOPILOT_BRIDGE::PARAMSET"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSETREQUEST")
  (make-package "AUTOPILOT_BRIDGE::PARAMSETREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMSETRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::PARAMSETRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::ParamSetRequest
  :super ros::object
  :slots (_name _value ))

(defmethod autopilot_bridge::ParamSetRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass autopilot_bridge::ParamSetResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::ParamSetResponse
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

(defclass autopilot_bridge::ParamSet
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::ParamSet :md5sum-) "762cb7cc4dabef610b8749b068c8bb92")
(setf (get autopilot_bridge::ParamSet :datatype-) "autopilot_bridge/ParamSet")
(setf (get autopilot_bridge::ParamSet :request) autopilot_bridge::ParamSetRequest)
(setf (get autopilot_bridge::ParamSet :response) autopilot_bridge::ParamSetResponse)

(defmethod autopilot_bridge::ParamSetRequest
  (:response () (instance autopilot_bridge::ParamSetResponse :init)))

(setf (get autopilot_bridge::ParamSetRequest :md5sum-) "762cb7cc4dabef610b8749b068c8bb92")
(setf (get autopilot_bridge::ParamSetRequest :datatype-) "autopilot_bridge/ParamSetRequest")
(setf (get autopilot_bridge::ParamSetRequest :definition-)
      "string name
float64 value
---
bool ok

")

(setf (get autopilot_bridge::ParamSetResponse :md5sum-) "762cb7cc4dabef610b8749b068c8bb92")
(setf (get autopilot_bridge::ParamSetResponse :datatype-) "autopilot_bridge/ParamSetResponse")
(setf (get autopilot_bridge::ParamSetResponse :definition-)
      "string name
float64 value
---
bool ok

")



(provide :autopilot_bridge/ParamSet "762cb7cc4dabef610b8749b068c8bb92")


