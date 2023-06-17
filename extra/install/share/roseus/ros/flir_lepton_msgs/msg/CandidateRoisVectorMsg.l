;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::CandidateRoisVectorMsg)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'CandidateRoisVectorMsg (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::CANDIDATEROISVECTORMSG")
  (make-package "FLIR_LEPTON_MSGS::CANDIDATEROISVECTORMSG"))

(in-package "ROS")
;;//! \htmlinclude CandidateRoisVectorMsg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flir_lepton_msgs::CandidateRoisVectorMsg
  :super ros::object
  :slots (_header _candidateRois _image ))

(defmethod flir_lepton_msgs::CandidateRoisVectorMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:candidateRois __candidateRois) ())
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _candidateRois __candidateRois)
   (setq _image __image)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:candidateRois
   (&rest __candidateRois)
   (if (keywordp (car __candidateRois))
       (send* _candidateRois __candidateRois)
     (progn
       (if __candidateRois (setq _candidateRois (car __candidateRois)))
       _candidateRois)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; flir_lepton_msgs/CandidateRoiMsg[] _candidateRois
    (apply #'+ (send-all _candidateRois :serialization-length)) 4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; flir_lepton_msgs/CandidateRoiMsg[] _candidateRois
     (write-long (length _candidateRois) s)
     (dolist (elem _candidateRois)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; flir_lepton_msgs/CandidateRoiMsg[] _candidateRois
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _candidateRois (let (r) (dotimes (i n) (push (instance flir_lepton_msgs::CandidateRoiMsg :init) r)) r))
     (dolist (elem- _candidateRois)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get flir_lepton_msgs::CandidateRoisVectorMsg :md5sum-) "1d84a819fbd4af1f20582eeceb6a3e56")
(setf (get flir_lepton_msgs::CandidateRoisVectorMsg :datatype-) "flir_lepton_msgs/CandidateRoisVectorMsg")
(setf (get flir_lepton_msgs::CandidateRoisVectorMsg :definition-)
      "Header header

CandidateRoiMsg[] candidateRois

sensor_msgs/Image image

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
MSG: flir_lepton_msgs/CandidateRoiMsg
Header header

# keypoint.pt.x
float32 keypointX

# keypoint.pt.y
float32 keypointY

# bounding box's vertices X coordinate
float32[] verticesX

# bounding box's vertices Y coordinate
float32[] verticesY

# blob's outline points X coordinate
float32[] outlineX

# blob's outline points X coordinate
float32[] outlineY

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

")



(provide :flir_lepton_msgs/CandidateRoisVectorMsg "1d84a819fbd4af1f20582eeceb6a3e56")


