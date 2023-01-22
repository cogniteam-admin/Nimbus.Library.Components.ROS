;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::SlaveSetup)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'SlaveSetup (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::SLAVESETUP")
  (make-package "AUTOPILOT_BRIDGE::SLAVESETUP"))
(unless (find-package "AUTOPILOT_BRIDGE::SLAVESETUPREQUEST")
  (make-package "AUTOPILOT_BRIDGE::SLAVESETUPREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::SLAVESETUPRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::SLAVESETUPRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::SlaveSetupRequest
  :super ros::object
  :slots (_enable _channel ))

(defmethod autopilot_bridge::SlaveSetupRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:channel __channel) "")
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _channel (string __channel))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; string _channel
    4 (length _channel)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; string _channel
       (write-long (length _channel) s) (princ _channel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _channel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _channel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass autopilot_bridge::SlaveSetupResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::SlaveSetupResponse
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

(defclass autopilot_bridge::SlaveSetup
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::SlaveSetup :md5sum-) "d5924e2477b62d263f4cdf77d9e962e5")
(setf (get autopilot_bridge::SlaveSetup :datatype-) "autopilot_bridge/SlaveSetup")
(setf (get autopilot_bridge::SlaveSetup :request) autopilot_bridge::SlaveSetupRequest)
(setf (get autopilot_bridge::SlaveSetup :response) autopilot_bridge::SlaveSetupResponse)

(defmethod autopilot_bridge::SlaveSetupRequest
  (:response () (instance autopilot_bridge::SlaveSetupResponse :init)))

(setf (get autopilot_bridge::SlaveSetupRequest :md5sum-) "d5924e2477b62d263f4cdf77d9e962e5")
(setf (get autopilot_bridge::SlaveSetupRequest :datatype-) "autopilot_bridge/SlaveSetupRequest")
(setf (get autopilot_bridge::SlaveSetupRequest :definition-)
      "bool enable
string channel
---
bool ok

")

(setf (get autopilot_bridge::SlaveSetupResponse :md5sum-) "d5924e2477b62d263f4cdf77d9e962e5")
(setf (get autopilot_bridge::SlaveSetupResponse :datatype-) "autopilot_bridge/SlaveSetupResponse")
(setf (get autopilot_bridge::SlaveSetupResponse :definition-)
      "bool enable
string channel
---
bool ok

")



(provide :autopilot_bridge/SlaveSetup "d5924e2477b62d263f4cdf77d9e962e5")


