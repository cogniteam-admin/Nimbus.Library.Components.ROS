;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::ParamGet)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'ParamGet (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGET")
  (make-package "AUTOPILOT_BRIDGE::PARAMGET"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGETREQUEST")
  (make-package "AUTOPILOT_BRIDGE::PARAMGETREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::PARAMGETRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::PARAMGETRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::ParamGetRequest
  :super ros::object
  :slots (_name ))

(defmethod autopilot_bridge::ParamGetRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass autopilot_bridge::ParamGetResponse
  :super ros::object
  :slots (_ok _value ))

(defmethod autopilot_bridge::ParamGetResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _value (float __value))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass autopilot_bridge::ParamGet
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::ParamGet :md5sum-) "4dbe0bec2dd822f20f6dbf0237b25e3e")
(setf (get autopilot_bridge::ParamGet :datatype-) "autopilot_bridge/ParamGet")
(setf (get autopilot_bridge::ParamGet :request) autopilot_bridge::ParamGetRequest)
(setf (get autopilot_bridge::ParamGet :response) autopilot_bridge::ParamGetResponse)

(defmethod autopilot_bridge::ParamGetRequest
  (:response () (instance autopilot_bridge::ParamGetResponse :init)))

(setf (get autopilot_bridge::ParamGetRequest :md5sum-) "4dbe0bec2dd822f20f6dbf0237b25e3e")
(setf (get autopilot_bridge::ParamGetRequest :datatype-) "autopilot_bridge/ParamGetRequest")
(setf (get autopilot_bridge::ParamGetRequest :definition-)
      "string name
---
bool ok
float64 value

")

(setf (get autopilot_bridge::ParamGetResponse :md5sum-) "4dbe0bec2dd822f20f6dbf0237b25e3e")
(setf (get autopilot_bridge::ParamGetResponse :datatype-) "autopilot_bridge/ParamGetResponse")
(setf (get autopilot_bridge::ParamGetResponse :definition-)
      "string name
---
bool ok
float64 value

")



(provide :autopilot_bridge/ParamGet "4dbe0bec2dd822f20f6dbf0237b25e3e")


