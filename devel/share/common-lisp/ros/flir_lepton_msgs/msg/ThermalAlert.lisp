; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude ThermalAlert.msg.html

(cl:defclass <ThermalAlert> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type flir_lepton_msgs-msg:GeneralAlertInfo
    :initform (cl:make-instance 'flir_lepton_msgs-msg:GeneralAlertInfo))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThermalAlert (<ThermalAlert>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThermalAlert>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThermalAlert)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<ThermalAlert> is deprecated: use flir_lepton_msgs-msg:ThermalAlert instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <ThermalAlert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:info-val is deprecated.  Use flir_lepton_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <ThermalAlert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:temperature-val is deprecated.  Use flir_lepton_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThermalAlert>) ostream)
  "Serializes a message object of type '<ThermalAlert>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThermalAlert>) istream)
  "Deserializes a message object of type '<ThermalAlert>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThermalAlert>)))
  "Returns string type for a message object of type '<ThermalAlert>"
  "flir_lepton_msgs/ThermalAlert")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThermalAlert)))
  "Returns string type for a message object of type 'ThermalAlert"
  "flir_lepton_msgs/ThermalAlert")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThermalAlert>)))
  "Returns md5sum for a message object of type '<ThermalAlert>"
  "18245e1dc2e3ca98fa29f3888f3602b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThermalAlert)))
  "Returns md5sum for a message object of type 'ThermalAlert"
  "18245e1dc2e3ca98fa29f3888f3602b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThermalAlert>)))
  "Returns full string definition for message of type '<ThermalAlert>"
  (cl:format cl:nil "GeneralAlertInfo info~%~%float32 temperature~%~%================================================================================~%MSG: flir_lepton_msgs/GeneralAlertInfo~%float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThermalAlert)))
  "Returns full string definition for message of type 'ThermalAlert"
  (cl:format cl:nil "GeneralAlertInfo info~%~%float32 temperature~%~%================================================================================~%MSG: flir_lepton_msgs/GeneralAlertInfo~%float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThermalAlert>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThermalAlert>))
  "Converts a ROS message object to a list"
  (cl:list 'ThermalAlert
    (cl:cons ':info (info msg))
    (cl:cons ':temperature (temperature msg))
))
