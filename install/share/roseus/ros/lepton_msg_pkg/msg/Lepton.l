;; Auto-generated. Do not edit!


(when (boundp 'lepton_msg_pkg::Lepton)
  (if (not (find-package "LEPTON_MSG_PKG"))
    (make-package "LEPTON_MSG_PKG"))
  (shadow 'Lepton (find-package "LEPTON_MSG_PKG")))
(unless (find-package "LEPTON_MSG_PKG::LEPTON")
  (make-package "LEPTON_MSG_PKG::LEPTON"))

(in-package "ROS")
;;//! \htmlinclude Lepton.msg.html


(defclass lepton_msg_pkg::Lepton
  :super ros::object
  :slots (_msg _size ))

(defmethod lepton_msg_pkg::Lepton
  (:init
   (&key
    ((:msg __msg) (make-array 0 :initial-element 0 :element-type :char))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _msg __msg)
   (setq _size (round __size))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; uint8[] _msg
    (* 1    (length _msg)) 4
    ;; uint16 _size
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _msg
     (write-long (length _msg) s)
     (princ _msg s)
     ;; uint16 _size
       (write-word _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _msg
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _msg (make-array n :element-type :char))
     (replace _msg buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lepton_msg_pkg::Lepton :md5sum-) "c2356878e9e58b7d986678eb88cca055")
(setf (get lepton_msg_pkg::Lepton :datatype-) "lepton_msg_pkg/Lepton")
(setf (get lepton_msg_pkg::Lepton :definition-)
      "uint8[] msg
uint16 size
")



(provide :lepton_msg_pkg/Lepton "c2356878e9e58b7d986678eb88cca055")


