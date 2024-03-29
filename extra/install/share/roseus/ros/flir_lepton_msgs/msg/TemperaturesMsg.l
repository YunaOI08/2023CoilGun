;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::TemperaturesMsg)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'TemperaturesMsg (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::TEMPERATURESMSG")
  (make-package "FLIR_LEPTON_MSGS::TEMPERATURESMSG"))

(in-package "ROS")
;;//! \htmlinclude TemperaturesMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flir_lepton_msgs::TemperaturesMsg
  :super ros::object
  :slots (_header _values ))

(defmethod flir_lepton_msgs::TemperaturesMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32MultiArray _values
    (send _values :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32MultiArray _values
       (send _values :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32MultiArray _values
     (send _values :deserialize buf ptr-) (incf ptr- (send _values :serialization-length))
   ;;
   self)
  )

(setf (get flir_lepton_msgs::TemperaturesMsg :md5sum-) "f3b9f8ea9fd00211ddae6dc9f7773488")
(setf (get flir_lepton_msgs::TemperaturesMsg :datatype-) "flir_lepton_msgs/TemperaturesMsg")
(setf (get flir_lepton_msgs::TemperaturesMsg :definition-)
      "Header header

# The temperatures in each pixel after calibration
std_msgs/Float32MultiArray values

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
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :flir_lepton_msgs/TemperaturesMsg "f3b9f8ea9fd00211ddae6dc9f7773488")


