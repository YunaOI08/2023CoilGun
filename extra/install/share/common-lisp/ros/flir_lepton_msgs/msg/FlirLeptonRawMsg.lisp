; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude FlirLeptonRawMsg.msg.html

(cl:defclass <FlirLeptonRawMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rawValues
    :reader rawValues
    :initarg :rawValues
    :type std_msgs-msg:UInt16MultiArray
    :initform (cl:make-instance 'std_msgs-msg:UInt16MultiArray)))
)

(cl:defclass FlirLeptonRawMsg (<FlirLeptonRawMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlirLeptonRawMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlirLeptonRawMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<FlirLeptonRawMsg> is deprecated: use flir_lepton_msgs-msg:FlirLeptonRawMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlirLeptonRawMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:header-val is deprecated.  Use flir_lepton_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rawValues-val :lambda-list '(m))
(cl:defmethod rawValues-val ((m <FlirLeptonRawMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:rawValues-val is deprecated.  Use flir_lepton_msgs-msg:rawValues instead.")
  (rawValues m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlirLeptonRawMsg>) ostream)
  "Serializes a message object of type '<FlirLeptonRawMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rawValues) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlirLeptonRawMsg>) istream)
  "Deserializes a message object of type '<FlirLeptonRawMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rawValues) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlirLeptonRawMsg>)))
  "Returns string type for a message object of type '<FlirLeptonRawMsg>"
  "flir_lepton_msgs/FlirLeptonRawMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlirLeptonRawMsg)))
  "Returns string type for a message object of type 'FlirLeptonRawMsg"
  "flir_lepton_msgs/FlirLeptonRawMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlirLeptonRawMsg>)))
  "Returns md5sum for a message object of type '<FlirLeptonRawMsg>"
  "92a43ed64b085feee311b4e58efc17b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlirLeptonRawMsg)))
  "Returns md5sum for a message object of type 'FlirLeptonRawMsg"
  "92a43ed64b085feee311b4e58efc17b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlirLeptonRawMsg>)))
  "Returns full string definition for message of type '<FlirLeptonRawMsg>"
  (cl:format cl:nil "Header header~%~%# The raw pixel values from the sensor~%std_msgs/UInt16MultiArray rawValues~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint16[]            data        # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlirLeptonRawMsg)))
  "Returns full string definition for message of type 'FlirLeptonRawMsg"
  (cl:format cl:nil "Header header~%~%# The raw pixel values from the sensor~%std_msgs/UInt16MultiArray rawValues~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint16[]            data        # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlirLeptonRawMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rawValues))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlirLeptonRawMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FlirLeptonRawMsg
    (cl:cons ':header (header msg))
    (cl:cons ':rawValues (rawValues msg))
))
