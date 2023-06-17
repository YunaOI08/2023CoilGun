;; Auto-generated. Do not edit!


(when (boundp 'flir_lepton_msgs::CandidateRoiMsg)
  (if (not (find-package "FLIR_LEPTON_MSGS"))
    (make-package "FLIR_LEPTON_MSGS"))
  (shadow 'CandidateRoiMsg (find-package "FLIR_LEPTON_MSGS")))
(unless (find-package "FLIR_LEPTON_MSGS::CANDIDATEROIMSG")
  (make-package "FLIR_LEPTON_MSGS::CANDIDATEROIMSG"))

(in-package "ROS")
;;//! \htmlinclude CandidateRoiMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flir_lepton_msgs::CandidateRoiMsg
  :super ros::object
  :slots (_header _keypointX _keypointY _verticesX _verticesY _outlineX _outlineY ))

(defmethod flir_lepton_msgs::CandidateRoiMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:keypointX __keypointX) 0.0)
    ((:keypointY __keypointY) 0.0)
    ((:verticesX __verticesX) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:verticesY __verticesY) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:outlineX __outlineX) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:outlineY __outlineY) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _keypointX (float __keypointX))
   (setq _keypointY (float __keypointY))
   (setq _verticesX __verticesX)
   (setq _verticesY __verticesY)
   (setq _outlineX __outlineX)
   (setq _outlineY __outlineY)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:keypointX
   (&optional __keypointX)
   (if __keypointX (setq _keypointX __keypointX)) _keypointX)
  (:keypointY
   (&optional __keypointY)
   (if __keypointY (setq _keypointY __keypointY)) _keypointY)
  (:verticesX
   (&optional __verticesX)
   (if __verticesX (setq _verticesX __verticesX)) _verticesX)
  (:verticesY
   (&optional __verticesY)
   (if __verticesY (setq _verticesY __verticesY)) _verticesY)
  (:outlineX
   (&optional __outlineX)
   (if __outlineX (setq _outlineX __outlineX)) _outlineX)
  (:outlineY
   (&optional __outlineY)
   (if __outlineY (setq _outlineY __outlineY)) _outlineY)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _keypointX
    4
    ;; float32 _keypointY
    4
    ;; float32[] _verticesX
    (* 4    (length _verticesX)) 4
    ;; float32[] _verticesY
    (* 4    (length _verticesY)) 4
    ;; float32[] _outlineX
    (* 4    (length _outlineX)) 4
    ;; float32[] _outlineY
    (* 4    (length _outlineY)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _keypointX
       (sys::poke _keypointX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _keypointY
       (sys::poke _keypointY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _verticesX
     (write-long (length _verticesX) s)
     (dotimes (i (length _verticesX))
       (sys::poke (elt _verticesX i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _verticesY
     (write-long (length _verticesY) s)
     (dotimes (i (length _verticesY))
       (sys::poke (elt _verticesY i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _outlineX
     (write-long (length _outlineX) s)
     (dotimes (i (length _outlineX))
       (sys::poke (elt _outlineX i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _outlineY
     (write-long (length _outlineY) s)
     (dotimes (i (length _outlineY))
       (sys::poke (elt _outlineY i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _keypointX
     (setq _keypointX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _keypointY
     (setq _keypointY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _verticesX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _verticesX (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _verticesX i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _verticesY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _verticesY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _verticesY i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _outlineX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outlineX (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _outlineX i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _outlineY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outlineY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _outlineY i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get flir_lepton_msgs::CandidateRoiMsg :md5sum-) "eb941ceeae2a537fa35424da91cbf0b9")
(setf (get flir_lepton_msgs::CandidateRoiMsg :datatype-) "flir_lepton_msgs/CandidateRoiMsg")
(setf (get flir_lepton_msgs::CandidateRoiMsg :definition-)
      "Header header

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

")



(provide :flir_lepton_msgs/CandidateRoiMsg "eb941ceeae2a537fa35424da91cbf0b9")


