;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Waypoint)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Waypoint (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::WAYPOINT")
  (make-package "AUTOPILOT_BRIDGE::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass autopilot_bridge::Waypoint
  :super ros::object
  :slots (_seq _frame _command _current _autocontinue _param1 _param2 _param3 _param4 _x _y _z ))

(defmethod autopilot_bridge::Waypoint
  (:init
   (&key
    ((:seq __seq) 0)
    ((:frame __frame) 0)
    ((:command __command) 0)
    ((:current __current) nil)
    ((:autocontinue __autocontinue) nil)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _frame (round __frame))
   (setq _command (round __command))
   (setq _current __current)
   (setq _autocontinue __autocontinue)
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:autocontinue
   (&optional __autocontinue)
   (if __autocontinue (setq _autocontinue __autocontinue)) _autocontinue)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; uint16 _seq
    2
    ;; uint8 _frame
    1
    ;; uint16 _command
    2
    ;; bool _current
    1
    ;; bool _autocontinue
    1
    ;; float64 _param1
    8
    ;; float64 _param2
    8
    ;; float64 _param3
    8
    ;; float64 _param4
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _seq
       (write-word _seq s)
     ;; uint8 _frame
       (write-byte _frame s)
     ;; uint16 _command
       (write-word _command s)
     ;; bool _current
       (if _current (write-byte -1 s) (write-byte 0 s))
     ;; bool _autocontinue
       (if _autocontinue (write-byte -1 s) (write-byte 0 s))
     ;; float64 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _seq
     (setq _seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _current
     (setq _current (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _autocontinue
     (setq _autocontinue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _param1
     (setq _param1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param2
     (setq _param2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param3
     (setq _param3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param4
     (setq _param4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autopilot_bridge::Waypoint :md5sum-) "55967e54789fbaf753fa65ffa29bd0a2")
(setf (get autopilot_bridge::Waypoint :datatype-) "autopilot_bridge/Waypoint")
(setf (get autopilot_bridge::Waypoint :definition-)
      "uint16 seq
uint8 frame
uint16 command
bool current
bool autocontinue
float64 param1
float64 param2
float64 param3
float64 param4
float64 x
float64 y
float64 z

")



(provide :autopilot_bridge/Waypoint "55967e54789fbaf753fa65ffa29bd0a2")


