;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::AutoPilotMsg)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'AutoPilotMsg (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::AUTOPILOTMSG")
  (make-package "AUTOPILOT_BRIDGE::AUTOPILOTMSG"))

(in-package "ROS")
;;//! \htmlinclude AutoPilotMsg.msg.html


(defclass autopilot_bridge::AutoPilotMsg
  :super ros::object
  :slots (_seq _text ))

(defmethod autopilot_bridge::AutoPilotMsg
  (:init
   (&key
    ((:seq __seq) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _text (string __text))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get autopilot_bridge::AutoPilotMsg :md5sum-) "4a6e7dd37ede14708a8dd0871344bc2a")
(setf (get autopilot_bridge::AutoPilotMsg :datatype-) "autopilot_bridge/AutoPilotMsg")
(setf (get autopilot_bridge::AutoPilotMsg :definition-)
      "uint32  seq
string  text

")



(provide :autopilot_bridge/AutoPilotMsg "4a6e7dd37ede14708a8dd0871344bc2a")


