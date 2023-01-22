;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::ReqPrevNMsgs)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'ReqPrevNMsgs (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::REQPREVNMSGS")
  (make-package "AUTOPILOT_BRIDGE::REQPREVNMSGS"))
(unless (find-package "AUTOPILOT_BRIDGE::REQPREVNMSGSREQUEST")
  (make-package "AUTOPILOT_BRIDGE::REQPREVNMSGSREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::REQPREVNMSGSRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::REQPREVNMSGSRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::ReqPrevNMsgsRequest
  :super ros::object
  :slots (_n _since_seq ))

(defmethod autopilot_bridge::ReqPrevNMsgsRequest
  (:init
   (&key
    ((:n __n) 0)
    ((:since_seq __since_seq) 0)
    )
   (send-super :init)
   (setq _n (round __n))
   (setq _since_seq (round __since_seq))
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:since_seq
   (&optional __since_seq)
   (if __since_seq (setq _since_seq __since_seq)) _since_seq)
  (:serialization-length
   ()
   (+
    ;; uint8 _n
    1
    ;; uint32 _since_seq
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _n
       (write-byte _n s)
     ;; uint32 _since_seq
       (write-long _since_seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _n
     (setq _n (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _since_seq
     (setq _since_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass autopilot_bridge::ReqPrevNMsgsResponse
  :super ros::object
  :slots (_msgs ))

(defmethod autopilot_bridge::ReqPrevNMsgsResponse
  (:init
   (&key
    ((:msgs __msgs) (let (r) (dotimes (i 0) (push (instance autopilot_bridge::AutoPilotMsg :init) r)) r))
    )
   (send-super :init)
   (setq _msgs __msgs)
   self)
  (:msgs
   (&rest __msgs)
   (if (keywordp (car __msgs))
       (send* _msgs __msgs)
     (progn
       (if __msgs (setq _msgs (car __msgs)))
       _msgs)))
  (:serialization-length
   ()
   (+
    ;; autopilot_bridge/AutoPilotMsg[] _msgs
    (apply #'+ (send-all _msgs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autopilot_bridge/AutoPilotMsg[] _msgs
     (write-long (length _msgs) s)
     (dolist (elem _msgs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autopilot_bridge/AutoPilotMsg[] _msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgs (let (r) (dotimes (i n) (push (instance autopilot_bridge::AutoPilotMsg :init) r)) r))
     (dolist (elem- _msgs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass autopilot_bridge::ReqPrevNMsgs
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::ReqPrevNMsgs :md5sum-) "5b9a3726344783db5cbe1607b04eb17e")
(setf (get autopilot_bridge::ReqPrevNMsgs :datatype-) "autopilot_bridge/ReqPrevNMsgs")
(setf (get autopilot_bridge::ReqPrevNMsgs :request) autopilot_bridge::ReqPrevNMsgsRequest)
(setf (get autopilot_bridge::ReqPrevNMsgs :response) autopilot_bridge::ReqPrevNMsgsResponse)

(defmethod autopilot_bridge::ReqPrevNMsgsRequest
  (:response () (instance autopilot_bridge::ReqPrevNMsgsResponse :init)))

(setf (get autopilot_bridge::ReqPrevNMsgsRequest :md5sum-) "5b9a3726344783db5cbe1607b04eb17e")
(setf (get autopilot_bridge::ReqPrevNMsgsRequest :datatype-) "autopilot_bridge/ReqPrevNMsgsRequest")
(setf (get autopilot_bridge::ReqPrevNMsgsRequest :definition-)
      "uint8 n
uint32 since_seq
---
AutoPilotMsg[] msgs


================================================================================
MSG: autopilot_bridge/AutoPilotMsg
uint32  seq
string  text
")

(setf (get autopilot_bridge::ReqPrevNMsgsResponse :md5sum-) "5b9a3726344783db5cbe1607b04eb17e")
(setf (get autopilot_bridge::ReqPrevNMsgsResponse :datatype-) "autopilot_bridge/ReqPrevNMsgsResponse")
(setf (get autopilot_bridge::ReqPrevNMsgsResponse :definition-)
      "uint8 n
uint32 since_seq
---
AutoPilotMsg[] msgs


================================================================================
MSG: autopilot_bridge/AutoPilotMsg
uint32  seq
string  text
")



(provide :autopilot_bridge/ReqPrevNMsgs "5b9a3726344783db5cbe1607b04eb17e")


