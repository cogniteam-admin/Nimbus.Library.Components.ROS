;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::TimedAction)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'TimedAction (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::TIMEDACTION")
  (make-package "AUTOPILOT_BRIDGE::TIMEDACTION"))
(unless (find-package "AUTOPILOT_BRIDGE::TIMEDACTIONREQUEST")
  (make-package "AUTOPILOT_BRIDGE::TIMEDACTIONREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::TIMEDACTIONRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::TIMEDACTIONRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::TimedActionRequest
  :super ros::object
  :slots (_timeout ))

(defmethod autopilot_bridge::TimedActionRequest
  (:init
   (&key
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _timeout (float __timeout))
   self)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass autopilot_bridge::TimedActionResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::TimedActionResponse
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

(defclass autopilot_bridge::TimedAction
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::TimedAction :md5sum-) "64f472a0a4b1503ba77d41b239c07c42")
(setf (get autopilot_bridge::TimedAction :datatype-) "autopilot_bridge/TimedAction")
(setf (get autopilot_bridge::TimedAction :request) autopilot_bridge::TimedActionRequest)
(setf (get autopilot_bridge::TimedAction :response) autopilot_bridge::TimedActionResponse)

(defmethod autopilot_bridge::TimedActionRequest
  (:response () (instance autopilot_bridge::TimedActionResponse :init)))

(setf (get autopilot_bridge::TimedActionRequest :md5sum-) "64f472a0a4b1503ba77d41b239c07c42")
(setf (get autopilot_bridge::TimedActionRequest :datatype-) "autopilot_bridge/TimedActionRequest")
(setf (get autopilot_bridge::TimedActionRequest :definition-)
      "float32 timeout
---
bool ok

")

(setf (get autopilot_bridge::TimedActionResponse :md5sum-) "64f472a0a4b1503ba77d41b239c07c42")
(setf (get autopilot_bridge::TimedActionResponse :datatype-) "autopilot_bridge/TimedActionResponse")
(setf (get autopilot_bridge::TimedActionResponse :definition-)
      "float32 timeout
---
bool ok

")



(provide :autopilot_bridge/TimedAction "64f472a0a4b1503ba77d41b239c07c42")


