;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::FlirLeptonBatchMsg)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'FlirLeptonBatchMsg (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::FLIRLEPTONBATCHMSG")
  (make-package "FLIR_LEPTON_MSGS::FLIRLEPTONBATCHMSG"))

(in-package "ROS")
;;//! \htmlinclude FlirLeptonBatchMsg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flir_lepton_msgs::FlirLeptonBatchMsg
  :super ros::object
  :slots (_header _thermalImage _temperatures ))

(defmethod flir_lepton_msgs::FlirLeptonBatchMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:thermalImage __thermalImage) (instance sensor_msgs::Image :init))
    ((:temperatures __temperatures) (instance flir_lepton_msgs::TemperaturesMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _thermalImage __thermalImage)
   (setq _temperatures __temperatures)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:thermalImage
   (&rest __thermalImage)
   (if (keywordp (car __thermalImage))
       (send* _thermalImage __thermalImage)
     (progn
       (if __thermalImage (setq _thermalImage (car __thermalImage)))
       _thermalImage)))
  (:temperatures
   (&rest __temperatures)
   (if (keywordp (car __temperatures))
       (send* _temperatures __temperatures)
     (progn
       (if __temperatures (setq _temperatures (car __temperatures)))
       _temperatures)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _thermalImage
    (send _thermalImage :serialization-length)
    ;; flir_lepton_msgs/TemperaturesMsg _temperatures
    (send _temperatures :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _thermalImage
       (send _thermalImage :serialize s)
     ;; flir_lepton_msgs/TemperaturesMsg _temperatures
       (send _temperatures :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _thermalImage
     (send _thermalImage :deserialize buf ptr-) (incf ptr- (send _thermalImage :serialization-length))
   ;; flir_lepton_msgs/TemperaturesMsg _temperatures
     (send _temperatures :deserialize buf ptr-) (incf ptr- (send _temperatures :serialization-length))
   ;;
   self)
  )

(setf (get flir_lepton_msgs::FlirLeptonBatchMsg :md5sum-) "5af4715870039c2b74ee43a75b8bccbd")
(setf (get flir_lepton_msgs::FlirLeptonBatchMsg :datatype-) "flir_lepton_msgs/FlirLeptonBatchMsg")
(setf (get flir_lepton_msgs::FlirLeptonBatchMsg :definition-)
      "Header header

# The thermal image acquired from flir_lepton sensor
sensor_msgs/Image thermalImage

# The temperatures in each pixel after calibration
TemperaturesMsg temperatures

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
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: flir_lepton_msgs/TemperaturesMsg
Header header

# The temperatures in each pixel after calibration
std_msgs/Float32MultiArray values

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



(provide :flir_lepton_msgs/FlirLeptonBatchMsg "5af4715870039c2b74ee43a75b8bccbd")


