; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude FlirLeptonBatchMsg.msg.html

(cl:defclass <FlirLeptonBatchMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (thermalImage
    :reader thermalImage
    :initarg :thermalImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (temperatures
    :reader temperatures
    :initarg :temperatures
    :type flir_lepton_msgs-msg:TemperaturesMsg
    :initform (cl:make-instance 'flir_lepton_msgs-msg:TemperaturesMsg)))
)

(cl:defclass FlirLeptonBatchMsg (<FlirLeptonBatchMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlirLeptonBatchMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlirLeptonBatchMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<FlirLeptonBatchMsg> is deprecated: use flir_lepton_msgs-msg:FlirLeptonBatchMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlirLeptonBatchMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:header-val is deprecated.  Use flir_lepton_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'thermalImage-val :lambda-list '(m))
(cl:defmethod thermalImage-val ((m <FlirLeptonBatchMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:thermalImage-val is deprecated.  Use flir_lepton_msgs-msg:thermalImage instead.")
  (thermalImage m))

(cl:ensure-generic-function 'temperatures-val :lambda-list '(m))
(cl:defmethod temperatures-val ((m <FlirLeptonBatchMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:temperatures-val is deprecated.  Use flir_lepton_msgs-msg:temperatures instead.")
  (temperatures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlirLeptonBatchMsg>) ostream)
  "Serializes a message object of type '<FlirLeptonBatchMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thermalImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'temperatures) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlirLeptonBatchMsg>) istream)
  "Deserializes a message object of type '<FlirLeptonBatchMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thermalImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'temperatures) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlirLeptonBatchMsg>)))
  "Returns string type for a message object of type '<FlirLeptonBatchMsg>"
  "flir_lepton_msgs/FlirLeptonBatchMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlirLeptonBatchMsg)))
  "Returns string type for a message object of type 'FlirLeptonBatchMsg"
  "flir_lepton_msgs/FlirLeptonBatchMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlirLeptonBatchMsg>)))
  "Returns md5sum for a message object of type '<FlirLeptonBatchMsg>"
  "5af4715870039c2b74ee43a75b8bccbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlirLeptonBatchMsg)))
  "Returns md5sum for a message object of type 'FlirLeptonBatchMsg"
  "5af4715870039c2b74ee43a75b8bccbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlirLeptonBatchMsg>)))
  "Returns full string definition for message of type '<FlirLeptonBatchMsg>"
  (cl:format cl:nil "Header header~%~%# The thermal image acquired from flir_lepton sensor~%sensor_msgs/Image thermalImage~%~%# The temperatures in each pixel after calibration~%TemperaturesMsg temperatures~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: flir_lepton_msgs/TemperaturesMsg~%Header header~%~%# The temperatures in each pixel after calibration~%std_msgs/Float32MultiArray values~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlirLeptonBatchMsg)))
  "Returns full string definition for message of type 'FlirLeptonBatchMsg"
  (cl:format cl:nil "Header header~%~%# The thermal image acquired from flir_lepton sensor~%sensor_msgs/Image thermalImage~%~%# The temperatures in each pixel after calibration~%TemperaturesMsg temperatures~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: flir_lepton_msgs/TemperaturesMsg~%Header header~%~%# The temperatures in each pixel after calibration~%std_msgs/Float32MultiArray values~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlirLeptonBatchMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thermalImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'temperatures))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlirLeptonBatchMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FlirLeptonBatchMsg
    (cl:cons ':header (header msg))
    (cl:cons ':thermalImage (thermalImage msg))
    (cl:cons ':temperatures (temperatures msg))
))
