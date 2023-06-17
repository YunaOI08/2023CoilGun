; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude GeneralAlertInfo.msg.html

(cl:defclass <GeneralAlertInfo> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass GeneralAlertInfo (<GeneralAlertInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneralAlertInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneralAlertInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<GeneralAlertInfo> is deprecated: use flir_lepton_msgs-msg:GeneralAlertInfo instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GeneralAlertInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:yaw-val is deprecated.  Use flir_lepton_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <GeneralAlertInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:pitch-val is deprecated.  Use flir_lepton_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <GeneralAlertInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:probability-val is deprecated.  Use flir_lepton_msgs-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneralAlertInfo>) ostream)
  "Serializes a message object of type '<GeneralAlertInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneralAlertInfo>) istream)
  "Deserializes a message object of type '<GeneralAlertInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneralAlertInfo>)))
  "Returns string type for a message object of type '<GeneralAlertInfo>"
  "flir_lepton_msgs/GeneralAlertInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneralAlertInfo)))
  "Returns string type for a message object of type 'GeneralAlertInfo"
  "flir_lepton_msgs/GeneralAlertInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneralAlertInfo>)))
  "Returns md5sum for a message object of type '<GeneralAlertInfo>"
  "f2bdae7028685c84899b21b0cb8b7155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneralAlertInfo)))
  "Returns md5sum for a message object of type 'GeneralAlertInfo"
  "f2bdae7028685c84899b21b0cb8b7155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneralAlertInfo>)))
  "Returns full string definition for message of type '<GeneralAlertInfo>"
  (cl:format cl:nil "float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneralAlertInfo)))
  "Returns full string definition for message of type 'GeneralAlertInfo"
  (cl:format cl:nil "float64 yaw~%float64 pitch~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneralAlertInfo>))
  (cl:+ 0
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneralAlertInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneralAlertInfo
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':probability (probability msg))
))
