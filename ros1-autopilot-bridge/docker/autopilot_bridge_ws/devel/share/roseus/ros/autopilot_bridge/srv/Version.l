;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Version)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Version (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::VERSION")
  (make-package "AUTOPILOT_BRIDGE::VERSION"))
(unless (find-package "AUTOPILOT_BRIDGE::VERSIONREQUEST")
  (make-package "AUTOPILOT_BRIDGE::VERSIONREQUEST"))
(unless (find-package "AUTOPILOT_BRIDGE::VERSIONRESPONSE")
  (make-package "AUTOPILOT_BRIDGE::VERSIONRESPONSE"))

(in-package "ROS")





(defclass autopilot_bridge::VersionRequest
  :super ros::object
  :slots (_timeout ))

(defmethod autopilot_bridge::VersionRequest
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

(defclass autopilot_bridge::VersionResponse
  :super ros::object
  :slots (_ok _cap_mission_float _cap_param_float _cap_mission_int _cap_command_int _cap_param_union _cap_ftp _cap_set_attitude _cap_set_position_local _cap_set_position_global _cap_terrain _cap_set_actuator _flight_sw _middleware _os_sw _board _flight_custom _middleware_custom _os_custom _vendor_id _product_id _uid ))

(defmethod autopilot_bridge::VersionResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:cap_mission_float __cap_mission_float) nil)
    ((:cap_param_float __cap_param_float) nil)
    ((:cap_mission_int __cap_mission_int) nil)
    ((:cap_command_int __cap_command_int) nil)
    ((:cap_param_union __cap_param_union) nil)
    ((:cap_ftp __cap_ftp) nil)
    ((:cap_set_attitude __cap_set_attitude) nil)
    ((:cap_set_position_local __cap_set_position_local) nil)
    ((:cap_set_position_global __cap_set_position_global) nil)
    ((:cap_terrain __cap_terrain) nil)
    ((:cap_set_actuator __cap_set_actuator) nil)
    ((:flight_sw __flight_sw) 0)
    ((:middleware __middleware) 0)
    ((:os_sw __os_sw) 0)
    ((:board __board) 0)
    ((:flight_custom __flight_custom) "")
    ((:middleware_custom __middleware_custom) "")
    ((:os_custom __os_custom) "")
    ((:vendor_id __vendor_id) 0)
    ((:product_id __product_id) 0)
    ((:uid __uid) 0)
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _cap_mission_float __cap_mission_float)
   (setq _cap_param_float __cap_param_float)
   (setq _cap_mission_int __cap_mission_int)
   (setq _cap_command_int __cap_command_int)
   (setq _cap_param_union __cap_param_union)
   (setq _cap_ftp __cap_ftp)
   (setq _cap_set_attitude __cap_set_attitude)
   (setq _cap_set_position_local __cap_set_position_local)
   (setq _cap_set_position_global __cap_set_position_global)
   (setq _cap_terrain __cap_terrain)
   (setq _cap_set_actuator __cap_set_actuator)
   (setq _flight_sw (round __flight_sw))
   (setq _middleware (round __middleware))
   (setq _os_sw (round __os_sw))
   (setq _board (round __board))
   (setq _flight_custom (string __flight_custom))
   (setq _middleware_custom (string __middleware_custom))
   (setq _os_custom (string __os_custom))
   (setq _vendor_id (round __vendor_id))
   (setq _product_id (round __product_id))
   (setq _uid (round __uid))
   self)
  (:ok
   (&optional __ok)
   (if __ok (setq _ok __ok)) _ok)
  (:cap_mission_float
   (&optional __cap_mission_float)
   (if __cap_mission_float (setq _cap_mission_float __cap_mission_float)) _cap_mission_float)
  (:cap_param_float
   (&optional __cap_param_float)
   (if __cap_param_float (setq _cap_param_float __cap_param_float)) _cap_param_float)
  (:cap_mission_int
   (&optional __cap_mission_int)
   (if __cap_mission_int (setq _cap_mission_int __cap_mission_int)) _cap_mission_int)
  (:cap_command_int
   (&optional __cap_command_int)
   (if __cap_command_int (setq _cap_command_int __cap_command_int)) _cap_command_int)
  (:cap_param_union
   (&optional __cap_param_union)
   (if __cap_param_union (setq _cap_param_union __cap_param_union)) _cap_param_union)
  (:cap_ftp
   (&optional __cap_ftp)
   (if __cap_ftp (setq _cap_ftp __cap_ftp)) _cap_ftp)
  (:cap_set_attitude
   (&optional __cap_set_attitude)
   (if __cap_set_attitude (setq _cap_set_attitude __cap_set_attitude)) _cap_set_attitude)
  (:cap_set_position_local
   (&optional __cap_set_position_local)
   (if __cap_set_position_local (setq _cap_set_position_local __cap_set_position_local)) _cap_set_position_local)
  (:cap_set_position_global
   (&optional __cap_set_position_global)
   (if __cap_set_position_global (setq _cap_set_position_global __cap_set_position_global)) _cap_set_position_global)
  (:cap_terrain
   (&optional __cap_terrain)
   (if __cap_terrain (setq _cap_terrain __cap_terrain)) _cap_terrain)
  (:cap_set_actuator
   (&optional __cap_set_actuator)
   (if __cap_set_actuator (setq _cap_set_actuator __cap_set_actuator)) _cap_set_actuator)
  (:flight_sw
   (&optional __flight_sw)
   (if __flight_sw (setq _flight_sw __flight_sw)) _flight_sw)
  (:middleware
   (&optional __middleware)
   (if __middleware (setq _middleware __middleware)) _middleware)
  (:os_sw
   (&optional __os_sw)
   (if __os_sw (setq _os_sw __os_sw)) _os_sw)
  (:board
   (&optional __board)
   (if __board (setq _board __board)) _board)
  (:flight_custom
   (&optional __flight_custom)
   (if __flight_custom (setq _flight_custom __flight_custom)) _flight_custom)
  (:middleware_custom
   (&optional __middleware_custom)
   (if __middleware_custom (setq _middleware_custom __middleware_custom)) _middleware_custom)
  (:os_custom
   (&optional __os_custom)
   (if __os_custom (setq _os_custom __os_custom)) _os_custom)
  (:vendor_id
   (&optional __vendor_id)
   (if __vendor_id (setq _vendor_id __vendor_id)) _vendor_id)
  (:product_id
   (&optional __product_id)
   (if __product_id (setq _product_id __product_id)) _product_id)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; bool _cap_mission_float
    1
    ;; bool _cap_param_float
    1
    ;; bool _cap_mission_int
    1
    ;; bool _cap_command_int
    1
    ;; bool _cap_param_union
    1
    ;; bool _cap_ftp
    1
    ;; bool _cap_set_attitude
    1
    ;; bool _cap_set_position_local
    1
    ;; bool _cap_set_position_global
    1
    ;; bool _cap_terrain
    1
    ;; bool _cap_set_actuator
    1
    ;; uint32 _flight_sw
    4
    ;; uint32 _middleware
    4
    ;; uint32 _os_sw
    4
    ;; uint32 _board
    4
    ;; string _flight_custom
    4 (length _flight_custom)
    ;; string _middleware_custom
    4 (length _middleware_custom)
    ;; string _os_custom
    4 (length _os_custom)
    ;; uint16 _vendor_id
    2
    ;; uint16 _product_id
    2
    ;; uint64 _uid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_mission_float
       (if _cap_mission_float (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_param_float
       (if _cap_param_float (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_mission_int
       (if _cap_mission_int (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_command_int
       (if _cap_command_int (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_param_union
       (if _cap_param_union (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_ftp
       (if _cap_ftp (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_set_attitude
       (if _cap_set_attitude (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_set_position_local
       (if _cap_set_position_local (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_set_position_global
       (if _cap_set_position_global (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_terrain
       (if _cap_terrain (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_set_actuator
       (if _cap_set_actuator (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _flight_sw
       (write-long _flight_sw s)
     ;; uint32 _middleware
       (write-long _middleware s)
     ;; uint32 _os_sw
       (write-long _os_sw s)
     ;; uint32 _board
       (write-long _board s)
     ;; string _flight_custom
       (write-long (length _flight_custom) s) (princ _flight_custom s)
     ;; string _middleware_custom
       (write-long (length _middleware_custom) s) (princ _middleware_custom s)
     ;; string _os_custom
       (write-long (length _os_custom) s) (princ _os_custom s)
     ;; uint16 _vendor_id
       (write-word _vendor_id s)
     ;; uint16 _product_id
       (write-word _product_id s)
     ;; uint64 _uid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uid) (= (length (_uid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uid . bv) 0) 0) s)
              (write-long (ash (elt (_uid . bv) 1) -1) s))
             ((and (class _uid) (= (length (_uid . bv)) 1)) ;; big1
              (write-long (elt (_uid . bv) 0) s)
              (write-long (if (>= _uid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uid s)(write-long (if (>= _uid 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_mission_float
     (setq _cap_mission_float (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_param_float
     (setq _cap_param_float (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_mission_int
     (setq _cap_mission_int (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_command_int
     (setq _cap_command_int (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_param_union
     (setq _cap_param_union (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_ftp
     (setq _cap_ftp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_set_attitude
     (setq _cap_set_attitude (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_set_position_local
     (setq _cap_set_position_local (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_set_position_global
     (setq _cap_set_position_global (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_terrain
     (setq _cap_terrain (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_set_actuator
     (setq _cap_set_actuator (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _flight_sw
     (setq _flight_sw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _middleware
     (setq _middleware (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _os_sw
     (setq _os_sw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _board
     (setq _board (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _flight_custom
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flight_custom (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _middleware_custom
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _middleware_custom (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _os_custom
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _os_custom (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _vendor_id
     (setq _vendor_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _product_id
     (setq _product_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _uid
     
#+(or :alpha :irix6 :x86_64)
      (setf _uid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass autopilot_bridge::Version
  :super ros::object
  :slots ())

(setf (get autopilot_bridge::Version :md5sum-) "d45d1d0a68288be9b762029a29740e01")
(setf (get autopilot_bridge::Version :datatype-) "autopilot_bridge/Version")
(setf (get autopilot_bridge::Version :request) autopilot_bridge::VersionRequest)
(setf (get autopilot_bridge::Version :response) autopilot_bridge::VersionResponse)

(defmethod autopilot_bridge::VersionRequest
  (:response () (instance autopilot_bridge::VersionResponse :init)))

(setf (get autopilot_bridge::VersionRequest :md5sum-) "d45d1d0a68288be9b762029a29740e01")
(setf (get autopilot_bridge::VersionRequest :datatype-) "autopilot_bridge/VersionRequest")
(setf (get autopilot_bridge::VersionRequest :definition-)
      "float32 timeout
---
bool ok
bool cap_mission_float
bool cap_param_float
bool cap_mission_int
bool cap_command_int
bool cap_param_union
bool cap_ftp
bool cap_set_attitude
bool cap_set_position_local
bool cap_set_position_global
bool cap_terrain
bool cap_set_actuator
uint32 flight_sw
uint32 middleware
uint32 os_sw
uint32 board
string flight_custom
string middleware_custom
string os_custom
uint16 vendor_id
uint16 product_id
uint64 uid

")

(setf (get autopilot_bridge::VersionResponse :md5sum-) "d45d1d0a68288be9b762029a29740e01")
(setf (get autopilot_bridge::VersionResponse :datatype-) "autopilot_bridge/VersionResponse")
(setf (get autopilot_bridge::VersionResponse :definition-)
      "float32 timeout
---
bool ok
bool cap_mission_float
bool cap_param_float
bool cap_mission_int
bool cap_command_int
bool cap_param_union
bool cap_ftp
bool cap_set_attitude
bool cap_set_position_local
bool cap_set_position_global
bool cap_terrain
bool cap_set_actuator
uint32 flight_sw
uint32 middleware
uint32 os_sw
uint32 board
string flight_custom
string middleware_custom
string os_custom
uint16 vendor_id
uint16 product_id
uint64 uid

")



(provide :autopilot_bridge/Version "d45d1d0a68288be9b762029a29740e01")


