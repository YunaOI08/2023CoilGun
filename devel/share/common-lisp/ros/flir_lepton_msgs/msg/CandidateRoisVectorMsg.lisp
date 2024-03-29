; Auto-generated. Do not edit!


(cl:in-package flir_lepton_msgs-msg)


;//! \htmlinclude CandidateRoisVectorMsg.msg.html

(cl:defclass <CandidateRoisVectorMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (candidateRois
    :reader candidateRois
    :initarg :candidateRois
    :type (cl:vector flir_lepton_msgs-msg:CandidateRoiMsg)
   :initform (cl:make-array 0 :element-type 'flir_lepton_msgs-msg:CandidateRoiMsg :initial-element (cl:make-instance 'flir_lepton_msgs-msg:CandidateRoiMsg)))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass CandidateRoisVectorMsg (<CandidateRoisVectorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CandidateRoisVectorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CandidateRoisVectorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flir_lepton_msgs-msg:<CandidateRoisVectorMsg> is deprecated: use flir_lepton_msgs-msg:CandidateRoisVectorMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CandidateRoisVectorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:header-val is deprecated.  Use flir_lepton_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'candidateRois-val :lambda-list '(m))
(cl:defmethod candidateRois-val ((m <CandidateRoisVectorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:candidateRois-val is deprecated.  Use flir_lepton_msgs-msg:candidateRois instead.")
  (candidateRois m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <CandidateRoisVectorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flir_lepton_msgs-msg:image-val is deprecated.  Use flir_lepton_msgs-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CandidateRoisVectorMsg>) ostream)
  "Serializes a message object of type '<CandidateRoisVectorMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'candidateRois))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'candidateRois))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CandidateRoisVectorMsg>) istream)
  "Deserializes a message object of type '<CandidateRoisVectorMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'candidateRois) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'candidateRois)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flir_lepton_msgs-msg:CandidateRoiMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CandidateRoisVectorMsg>)))
  "Returns string type for a message object of type '<CandidateRoisVectorMsg>"
  "flir_lepton_msgs/CandidateRoisVectorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CandidateRoisVectorMsg)))
  "Returns string type for a message object of type 'CandidateRoisVectorMsg"
  "flir_lepton_msgs/CandidateRoisVectorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CandidateRoisVectorMsg>)))
  "Returns md5sum for a message object of type '<CandidateRoisVectorMsg>"
  "1d84a819fbd4af1f20582eeceb6a3e56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CandidateRoisVectorMsg)))
  "Returns md5sum for a message object of type 'CandidateRoisVectorMsg"
  "1d84a819fbd4af1f20582eeceb6a3e56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CandidateRoisVectorMsg>)))
  "Returns full string definition for message of type '<CandidateRoisVectorMsg>"
  (cl:format cl:nil "Header header~%~%CandidateRoiMsg[] candidateRois~%~%sensor_msgs/Image image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: flir_lepton_msgs/CandidateRoiMsg~%Header header~%~%# keypoint.pt.x~%float32 keypointX~%~%# keypoint.pt.y~%float32 keypointY~%~%# bounding box's vertices X coordinate~%float32[] verticesX~%~%# bounding box's vertices Y coordinate~%float32[] verticesY~%~%# blob's outline points X coordinate~%float32[] outlineX~%~%# blob's outline points X coordinate~%float32[] outlineY~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CandidateRoisVectorMsg)))
  "Returns full string definition for message of type 'CandidateRoisVectorMsg"
  (cl:format cl:nil "Header header~%~%CandidateRoiMsg[] candidateRois~%~%sensor_msgs/Image image~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: flir_lepton_msgs/CandidateRoiMsg~%Header header~%~%# keypoint.pt.x~%float32 keypointX~%~%# keypoint.pt.y~%float32 keypointY~%~%# bounding box's vertices X coordinate~%float32[] verticesX~%~%# bounding box's vertices Y coordinate~%float32[] verticesY~%~%# blob's outline points X coordinate~%float32[] outlineX~%~%# blob's outline points X coordinate~%float32[] outlineY~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CandidateRoisVectorMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'candidateRois) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CandidateRoisVectorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'CandidateRoisVectorMsg
    (cl:cons ':header (header msg))
    (cl:cons ':candidateRois (candidateRois msg))
    (cl:cons ':image (image msg))
))
