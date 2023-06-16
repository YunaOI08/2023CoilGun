; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude ThermalAlertVector.msg.html

(cl:defclass <ThermalAlertVector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (alerts
    :reader alerts
    :initarg :alerts
    :type (cl:vector flir_lepton_msgs-msg:ThermalAlert)
   :initform (cl:make-array 0 :element-type 'flir_lepton_msgs-msg:ThermalAlert :initial-element (cl:make-instance 'flir_lepton_msgs-msg:ThermalAlert))))
)

(cl:defclass ThermalAlertVector (<ThermalAlertVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThermalAlertVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThermalAlertVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<ThermalAlertVector> is deprecated: use flir_lepton_msgs-msg:ThermalAlertVector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThermalAlertVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:header-val is deprecated.  Use flir_lepton_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'alerts-val :lambda-list '(m))
(cl:defmethod alerts-val ((m <ThermalAlertVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:alerts-val is deprecated.  Use flir_lepton_msgs-msg:alerts instead.")
  (alerts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThermalAlertVector>) ostream)
  "Serializes a message object of type '<ThermalAlertVector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alerts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'alerts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThermalAlertVector>) istream)
  "Deserializes a message object of type '<ThermalAlertVector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alerts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alerts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flir_lepton_msgs-msg:ThermalAlert))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThermalAlertVector>)))
  "Returns string type for a message object of type '<ThermalAlertVector>"
  "flir_lepton_msgs/ThermalAlertVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThermalAlertVector)))
  "Returns string type for a message object of type 'ThermalAlertVector"
  "flir_lepton_msgs/ThermalAlertVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThermalAlertVector>)))
  "Returns md5sum for a message object of type '<ThermalAlertVector>"
  "bbc179673686a6053173bda4dbac0990")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThermalAlertVector)))
  "Returns md5sum for a message object of type 'ThermalAlertVector"
  "bbc179673686a6053173bda4dbac0990")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThermalAlertVector>)))
  "Returns full string definition for message of type '<ThermalAlertVector>"
  (cl:format cl:nil "Header header~%ThermalAlert[] alerts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: flir_lepton_msgs/ThermalAlert~%GeneralAlertInfo info~%~%float32 temperature~%~%================================================================================~%MSG: flir_lepton_msgs/GeneralAlertInfo~%float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThermalAlertVector)))
  "Returns full string definition for message of type 'ThermalAlertVector"
  (cl:format cl:nil "Header header~%ThermalAlert[] alerts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: flir_lepton_msgs/ThermalAlert~%GeneralAlertInfo info~%~%float32 temperature~%~%================================================================================~%MSG: flir_lepton_msgs/GeneralAlertInfo~%float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThermalAlertVector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alerts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThermalAlertVector>))
  "Converts a ROS message object to a list"
  (cl:list 'ThermalAlertVector
    (cl:cons ':header (header msg))
    (cl:cons ':alerts (alerts msg))
))
