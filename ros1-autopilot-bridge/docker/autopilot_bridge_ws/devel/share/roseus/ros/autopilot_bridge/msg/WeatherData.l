;; Auto-generated. Do not edit!


(when (boundp 'autopilot_bridge::WeatherData)
  (if (not (find-package "AUTOPILOT_BRIDGE"))
    (make-package "AUTOPILOT_BRIDGE"))
  (shadow 'WeatherData (find-package "AUTOPILOT_BRIDGE")))
(unless (find-package "AUTOPILOT_BRIDGE::WEATHERDATA")
  (make-package "AUTOPILOT_BRIDGE::WEATHERDATA"))

(in-package "ROS")
;;//! \htmlinclude WeatherData.msg.html


(defclass autopilot_bridge::WeatherData
  :super ros::object
  :slots (_baro_millibars _temp_C _wind_mph _wind_direction ))

(defmethod autopilot_bridge::WeatherData
  (:init
   (&key
    ((:baro_millibars __baro_millibars) 0.0)
    ((:temp_C __temp_C) 0.0)
    ((:wind_mph __wind_mph) 0.0)
    ((:wind_direction __wind_direction) 0.0)
    )
   (send-super :init)
   (setq _baro_millibars (float __baro_millibars))
   (setq _temp_C (float __temp_C))
   (setq _wind_mph (float __wind_mph))
   (setq _wind_direction (float __wind_direction))
   self)
  (:baro_millibars
   (&optional __baro_millibars)
   (if __baro_millibars (setq _baro_millibars __baro_millibars)) _baro_millibars)
  (:temp_C
   (&optional __temp_C)
   (if __temp_C (setq _temp_C __temp_C)) _temp_C)
  (:wind_mph
   (&optional __wind_mph)
   (if __wind_mph (setq _wind_mph __wind_mph)) _wind_mph)
  (:wind_direction
   (&optional __wind_direction)
   (if __wind_direction (setq _wind_direction __wind_direction)) _wind_direction)
  (:serialization-length
   ()
   (+
    ;; float32 _baro_millibars
    4
    ;; float32 _temp_C
    4
    ;; float32 _wind_mph
    4
    ;; float32 _wind_direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _baro_millibars
       (sys::poke _baro_millibars (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp_C
       (sys::poke _temp_C (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wind_mph
       (sys::poke _wind_mph (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wind_direction
       (sys::poke _wind_direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _baro_millibars
     (setq _baro_millibars (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp_C
     (setq _temp_C (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wind_mph
     (setq _wind_mph (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wind_direction
     (setq _wind_direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autopilot_bridge::WeatherData :md5sum-) "ad6ecb730008621b85e84342a94f123f")
(setf (get autopilot_bridge::WeatherData :datatype-) "autopilot_bridge/WeatherData")
(setf (get autopilot_bridge::WeatherData :definition-)
      "float32 baro_millibars
float32 temp_C
float32 wind_mph
float32 wind_direction

")



(provide :autopilot_bridge/WeatherData "ad6ecb730008621b85e84342a94f123f")


