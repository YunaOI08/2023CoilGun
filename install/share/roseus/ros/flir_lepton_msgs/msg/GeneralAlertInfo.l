;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::GeneralAlertInfo)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'GeneralAlertInfo (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::GENERALALERTINFO")
  (make-package "FLIR_LEPTON_MSGS::GENERALALERTINFO"))

(in-package "ROS")
;;//! \htmlinclude GeneralAlertInfo.msg.html


(defclass flir_lepton_msgs::GeneralAlertInfo
  :super ros::object
  :slots (_yaw _pitch _probability ))

(defmethod flir_lepton_msgs::GeneralAlertInfo
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _probability (float __probability))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float32 _probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get flir_lepton_msgs::GeneralAlertInfo :md5sum-) "f2bdae7028685c84899b21b0cb8b7155")
(setf (get flir_lepton_msgs::GeneralAlertInfo :datatype-) "flir_lepton_msgs/GeneralAlertInfo")
(setf (get flir_lepton_msgs::GeneralAlertInfo :definition-)
      "float64 yaw
float64 pitch
float32 probability

")



(provide :flir_lepton_msgs/GeneralAlertInfo "f2bdae7028685c84899b21b0cb8b7155")


