;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::Status)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'Status (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::STATUS")
  (make-package "AUTOPILOT_BRIDGE::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_RALLY*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_RALLY* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_RALLY* 0)
(intern "*MODE_MANUAL*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_MANUAL* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_MANUAL* 1)
(intern "*MODE_FBWA*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_FBWA* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_FBWA* 2)
(intern "*MODE_GUIDED*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_GUIDED* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_GUIDED* 3)
(intern "*MODE_AUTO*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_AUTO* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_AUTO* 4)
(intern "*MODE_FBWB*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_FBWB* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_FBWB* 5)
(intern "*MODE_CIRCLE*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_CIRCLE* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_CIRCLE* 6)
(intern "*MODE_LOITER*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_LOITER* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_LOITER* 7)
(intern "*MODE_INITIALIZING*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_INITIALIZING* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_INITIALIZING* 8)
(intern "*MODE_UNKNOWN*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*MODE_UNKNOWN* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*MODE_UNKNOWN* 15)
(intern "*FENCE_NOT_BREACHED*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*FENCE_NOT_BREACHED* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*FENCE_NOT_BREACHED* 0)
(intern "*FENCE_BREACHED*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*FENCE_BREACHED* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*FENCE_BREACHED* 1)
(intern "*FENCE_DISABLED*" (find-package "AUTOPILOT_BRIDGE::STATUS"))
(shadow '*FENCE_DISABLED* (find-package "AUTOPILOT_BRIDGE::STATUS"))
(defconstant autopilot_bridge::Status::*FENCE_DISABLED* 2)
(defclass autopilot_bridge::Status
  :super ros::object
  :slots (_header _mode _armed _ahrs_ok _alt_rel _as_ok _as_read _fence_status _gps_ok _gps_sats _gps_eph _ins_ok _mag_ok _mis_cur _pwr_ok _pwr_batt_rem _pwr_batt_vcc _pwr_batt_cur ))

(defmethod autopilot_bridge::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:armed __armed) nil)
    ((:ahrs_ok __ahrs_ok) nil)
    ((:alt_rel __alt_rel) 0)
    ((:as_ok __as_ok) nil)
    ((:as_read __as_read) 0.0)
    ((:fence_status __fence_status) 0)
    ((:gps_ok __gps_ok) nil)
    ((:gps_sats __gps_sats) 0)
    ((:gps_eph __gps_eph) 0)
    ((:ins_ok __ins_ok) nil)
    ((:mag_ok __mag_ok) nil)
    ((:mis_cur __mis_cur) 0)
    ((:pwr_ok __pwr_ok) nil)
    ((:pwr_batt_rem __pwr_batt_rem) 0)
    ((:pwr_batt_vcc __pwr_batt_vcc) 0)
    ((:pwr_batt_cur __pwr_batt_cur) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _armed __armed)
   (setq _ahrs_ok __ahrs_ok)
   (setq _alt_rel (round __alt_rel))
   (setq _as_ok __as_ok)
   (setq _as_read (float __as_read))
   (setq _fence_status (round __fence_status))
   (setq _gps_ok __gps_ok)
   (setq _gps_sats (round __gps_sats))
   (setq _gps_eph (round __gps_eph))
   (setq _ins_ok __ins_ok)
   (setq _mag_ok __mag_ok)
   (setq _mis_cur (round __mis_cur))
   (setq _pwr_ok __pwr_ok)
   (setq _pwr_batt_rem (round __pwr_batt_rem))
   (setq _pwr_batt_vcc (round __pwr_batt_vcc))
   (setq _pwr_batt_cur (round __pwr_batt_cur))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:ahrs_ok
   (&optional __ahrs_ok)
   (if __ahrs_ok (setq _ahrs_ok __ahrs_ok)) _ahrs_ok)
  (:alt_rel
   (&optional __alt_rel)
   (if __alt_rel (setq _alt_rel __alt_rel)) _alt_rel)
  (:as_ok
   (&optional __as_ok)
   (if __as_ok (setq _as_ok __as_ok)) _as_ok)
  (:as_read
   (&optional __as_read)
   (if __as_read (setq _as_read __as_read)) _as_read)
  (:fence_status
   (&optional __fence_status)
   (if __fence_status (setq _fence_status __fence_status)) _fence_status)
  (:gps_ok
   (&optional __gps_ok)
   (if __gps_ok (setq _gps_ok __gps_ok)) _gps_ok)
  (:gps_sats
   (&optional __gps_sats)
   (if __gps_sats (setq _gps_sats __gps_sats)) _gps_sats)
  (:gps_eph
   (&optional __gps_eph)
   (if __gps_eph (setq _gps_eph __gps_eph)) _gps_eph)
  (:ins_ok
   (&optional __ins_ok)
   (if __ins_ok (setq _ins_ok __ins_ok)) _ins_ok)
  (:mag_ok
   (&optional __mag_ok)
   (if __mag_ok (setq _mag_ok __mag_ok)) _mag_ok)
  (:mis_cur
   (&optional __mis_cur)
   (if __mis_cur (setq _mis_cur __mis_cur)) _mis_cur)
  (:pwr_ok
   (&optional __pwr_ok)
   (if __pwr_ok (setq _pwr_ok __pwr_ok)) _pwr_ok)
  (:pwr_batt_rem
   (&optional __pwr_batt_rem)
   (if __pwr_batt_rem (setq _pwr_batt_rem __pwr_batt_rem)) _pwr_batt_rem)
  (:pwr_batt_vcc
   (&optional __pwr_batt_vcc)
   (if __pwr_batt_vcc (setq _pwr_batt_vcc __pwr_batt_vcc)) _pwr_batt_vcc)
  (:pwr_batt_cur
   (&optional __pwr_batt_cur)
   (if __pwr_batt_cur (setq _pwr_batt_cur __pwr_batt_cur)) _pwr_batt_cur)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; bool _armed
    1
    ;; bool _ahrs_ok
    1
    ;; int32 _alt_rel
    4
    ;; bool _as_ok
    1
    ;; float32 _as_read
    4
    ;; uint8 _fence_status
    1
    ;; bool _gps_ok
    1
    ;; uint8 _gps_sats
    1
    ;; uint16 _gps_eph
    2
    ;; bool _ins_ok
    1
    ;; bool _mag_ok
    1
    ;; uint16 _mis_cur
    2
    ;; bool _pwr_ok
    1
    ;; int16 _pwr_batt_rem
    2
    ;; int16 _pwr_batt_vcc
    2
    ;; int16 _pwr_batt_cur
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _ahrs_ok
       (if _ahrs_ok (write-byte -1 s) (write-byte 0 s))
     ;; int32 _alt_rel
       (write-long _alt_rel s)
     ;; bool _as_ok
       (if _as_ok (write-byte -1 s) (write-byte 0 s))
     ;; float32 _as_read
       (sys::poke _as_read (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _fence_status
       (write-byte _fence_status s)
     ;; bool _gps_ok
       (if _gps_ok (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _gps_sats
       (write-byte _gps_sats s)
     ;; uint16 _gps_eph
       (write-word _gps_eph s)
     ;; bool _ins_ok
       (if _ins_ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _mag_ok
       (if _mag_ok (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _mis_cur
       (write-word _mis_cur s)
     ;; bool _pwr_ok
       (if _pwr_ok (write-byte -1 s) (write-byte 0 s))
     ;; int16 _pwr_batt_rem
       (write-word _pwr_batt_rem s)
     ;; int16 _pwr_batt_vcc
       (write-word _pwr_batt_vcc s)
     ;; int16 _pwr_batt_cur
       (write-word _pwr_batt_cur s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ahrs_ok
     (setq _ahrs_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _alt_rel
     (setq _alt_rel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _as_ok
     (setq _as_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _as_read
     (setq _as_read (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _fence_status
     (setq _fence_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _gps_ok
     (setq _gps_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _gps_sats
     (setq _gps_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gps_eph
     (setq _gps_eph (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _ins_ok
     (setq _ins_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mag_ok
     (setq _mag_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _mis_cur
     (setq _mis_cur (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _pwr_ok
     (setq _pwr_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _pwr_batt_rem
     (setq _pwr_batt_rem (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwr_batt_vcc
     (setq _pwr_batt_vcc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pwr_batt_cur
     (setq _pwr_batt_cur (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get autopilot_bridge::Status :md5sum-) "3fa5b3d92700636ca78bc44bf0a7b17e")
(setf (get autopilot_bridge::Status :datatype-) "autopilot_bridge/Status")
(setf (get autopilot_bridge::Status :definition-)
      "uint8 MODE_RALLY=0
uint8 MODE_MANUAL=1
uint8 MODE_FBWA=2
uint8 MODE_GUIDED=3
uint8 MODE_AUTO=4
uint8 MODE_FBWB=5
uint8 MODE_CIRCLE=6
uint8 MODE_LOITER=7
uint8 MODE_INITIALIZING=8
uint8 MODE_UNKNOWN=15

uint8 FENCE_NOT_BREACHED=0
uint8 FENCE_BREACHED=1
uint8 FENCE_DISABLED=2

Header  header
uint8   mode
bool    armed
bool    ahrs_ok
int32   alt_rel
bool    as_ok
float32 as_read
uint8   fence_status
bool    gps_ok
uint8   gps_sats
uint16  gps_eph
bool    ins_ok
bool    mag_ok
uint16  mis_cur
bool    pwr_ok
int16   pwr_batt_rem
int16   pwr_batt_vcc
int16   pwr_batt_cur


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :autopilot_bridge/Status "3fa5b3d92700636ca78bc44bf0a7b17e")


