;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::ThermalAlert)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'ThermalAlert (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::THERMALALERT")
  (make-package "FLIR_LEPTON_MSGS::THERMALALERT"))

(in-package "ROS")
;;//! \htmlinclude ThermalAlert.msg.html


(defclass flir_lepton_msgs::ThermalAlert
  :super ros::object
  :slots (_info _temperature ))

(defmethod flir_lepton_msgs::ThermalAlert
  (:init
   (&key
    ((:info __info) (instance flir_lepton_msgs::GeneralAlertInfo :init))
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _info __info)
   (setq _temperature (float __temperature))
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; flir_lepton_msgs/GeneralAlertInfo _info
    (send _info :serialization-length)
    ;; float32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; flir_lepton_msgs/GeneralAlertInfo _info
       (send _info :serialize s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; flir_lepton_msgs/GeneralAlertInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get flir_lepton_msgs::ThermalAlert :md5sum-) "18245e1dc2e3ca98fa29f3888f3602b3")
(setf (get flir_lepton_msgs::ThermalAlert :datatype-) "flir_lepton_msgs/ThermalAlert")
(setf (get flir_lepton_msgs::ThermalAlert :definition-)
      "GeneralAlertInfo info

float32 temperature

================================================================================
MSG: flir_lepton_msgs/GeneralAlertInfo
float64 yaw
float64 pitch
float32 probability

")



(provide :flir_lepton_msgs/ThermalAlert "18245e1dc2e3ca98fa29f3888f3602b3")


