;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::ThermalAlertVector)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'ThermalAlertVector (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::THERMALALERTVECTOR")
  (make-package "FLIR_LEPTON_MSGS::THERMALALERTVECTOR"))

(in-package "ROS")
;;//! \htmlinclude ThermalAlertVector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flir_lepton_msgs::ThermalAlertVector
  :super ros::object
  :slots (_header _alerts ))

(defmethod flir_lepton_msgs::ThermalAlertVector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:alerts __alerts) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _alerts __alerts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:alerts
   (&rest __alerts)
   (if (keywordp (car __alerts))
       (send* _alerts __alerts)
     (progn
       (if __alerts (setq _alerts (car __alerts)))
       _alerts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; flir_lepton_msgs/ThermalAlert[] _alerts
    (apply #'+ (send-all _alerts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; flir_lepton_msgs/ThermalAlert[] _alerts
     (write-long (length _alerts) s)
     (dolist (elem _alerts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; flir_lepton_msgs/ThermalAlert[] _alerts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alerts (let (r) (dotimes (i n) (push (instance flir_lepton_msgs::ThermalAlert :init) r)) r))
     (dolist (elem- _alerts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flir_lepton_msgs::ThermalAlertVector :md5sum-) "bbc179673686a6053173bda4dbac0990")
(setf (get flir_lepton_msgs::ThermalAlertVector :datatype-) "flir_lepton_msgs/ThermalAlertVector")
(setf (get flir_lepton_msgs::ThermalAlertVector :definition-)
      "Header header
ThermalAlert[] alerts

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

================================================================================
MSG: flir_lepton_msgs/ThermalAlert
GeneralAlertInfo info

float32 temperature

================================================================================
MSG: flir_lepton_msgs/GeneralAlertInfo
float64 yaw
float64 pitch
float32 probability

")



(provide :flir_lepton_msgs/ThermalAlertVector "bbc179673686a6053173bda4dbac0990")


