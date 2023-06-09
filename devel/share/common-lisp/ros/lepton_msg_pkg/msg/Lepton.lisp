; Auto-generated. Do not edit!


(cl:in-package lepton_msg_pkg-msg)


;//! \htmlinclude Lepton.msg.html

(cl:defclass <Lepton> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Lepton (<Lepton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lepton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lepton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lepton_msg_pkg-msg:<Lepton> is deprecated: use lepton_msg_pkg-msg:Lepton instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Lepton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lepton_msg_pkg-msg:msg-val is deprecated.  Use lepton_msg_pkg-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Lepton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lepton_msg_pkg-msg:size-val is deprecated.  Use lepton_msg_pkg-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lepton>) ostream)
  "Serializes a message object of type '<Lepton>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'msg))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lepton>) istream)
  "Deserializes a message object of type '<Lepton>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lepton>)))
  "Returns string type for a message object of type '<Lepton>"
  "lepton_msg_pkg/Lepton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lepton)))
  "Returns string type for a message object of type 'Lepton"
  "lepton_msg_pkg/Lepton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lepton>)))
  "Returns md5sum for a message object of type '<Lepton>"
  "c2356878e9e58b7d986678eb88cca055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lepton)))
  "Returns md5sum for a message object of type 'Lepton"
  "c2356878e9e58b7d986678eb88cca055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lepton>)))
  "Returns full string definition for message of type '<Lepton>"
  (cl:format cl:nil "uint8[] msg~%uint16 size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lepton)))
  "Returns full string definition for message of type 'Lepton"
  (cl:format cl:nil "uint8[] msg~%uint16 size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lepton>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lepton>))
  "Converts a ROS message object to a list"
  (cl:list 'Lepton
    (cl:cons ':msg (msg msg))
    (cl:cons ':size (size msg))
))
