;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::FileLoad)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'FileLoad (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::FILELOAD")
  (make-package "AUTOPILOT_BRIDGE::FILELOAD"))
(unless (find-package "AUTOPILOT_BRIDGE::FILELOADREQUEST")
  (make-package "AUTOPILOT_BRIDGE::FILELOADREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::FILELOADRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::FILELOADRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::FileLoadRequest
  :super ros::object
  :slots (_name ))

(defmethod autopilot_bridge::FileLoadRequest
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

(defclass autopilot_bridge::FileLoadResponse
  :super ros::object
  :slots (_ok ))

(defmethod autopilot_bridge::FileLoadResponse
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

(defclass autopilot_bridge::FileLoad
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::FileLoad :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get autopilot_bridge::FileLoad :datatype-) "autopilot_bridge/FileLoad")
(setf (get autopilot_bridge::FileLoad :request) autopilot_bridge::FileLoadRequest)
(setf (get autopilot_bridge::FileLoad :response) autopilot_bridge::FileLoadResponse)

(defmethod autopilot_bridge::FileLoadRequest
  (:response () (instance autopilot_bridge::FileLoadResponse :init)))

(setf (get autopilot_bridge::FileLoadRequest :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get autopilot_bridge::FileLoadRequest :datatype-) "autopilot_bridge/FileLoadRequest")
(setf (get autopilot_bridge::FileLoadRequest :definition-)
      "string name
---
bool ok

")

(setf (get autopilot_bridge::FileLoadResponse :md5sum-) "647e5c54b8d6468952d8d31f1efe96c0")
(setf (get autopilot_bridge::FileLoadResponse :datatype-) "autopilot_bridge/FileLoadResponse")
(setf (get autopilot_bridge::FileLoadResponse :definition-)
      "string name
---
bool ok

")



(provide :autopilot_bridge/FileLoad "647e5c54b8d6468952d8d31f1efe96c0")


