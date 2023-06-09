
(cl:in-package :asdf)

(defsystem "lepton_msg_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Lepton" :depends-on ("_package_Lepton"))
    (:file "_package_Lepton" :depends-on ("_package"))
  ))