
(cl:in-package :asdf)

(defsystem "flir_lepton_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CandidateRoiMsg" :depends-on ("_package_CandidateRoiMsg"))
    (:file "_package_CandidateRoiMsg" :depends-on ("_package"))
    (:file "CandidateRoisVectorMsg" :depends-on ("_package_CandidateRoisVectorMsg"))
    (:file "_package_CandidateRoisVectorMsg" :depends-on ("_package"))
    (:file "FlirLeptonBatchMsg" :depends-on ("_package_FlirLeptonBatchMsg"))
    (:file "_package_FlirLeptonBatchMsg" :depends-on ("_package"))
    (:file "FlirLeptonRawMsg" :depends-on ("_package_FlirLeptonRawMsg"))
    (:file "_package_FlirLeptonRawMsg" :depends-on ("_package"))
    (:file "GeneralAlertInfo" :depends-on ("_package_GeneralAlertInfo"))
    (:file "_package_GeneralAlertInfo" :depends-on ("_package"))
    (:file "TemperaturesMsg" :depends-on ("_package_TemperaturesMsg"))
    (:file "_package_TemperaturesMsg" :depends-on ("_package"))
    (:file "ThermalAlert" :depends-on ("_package_ThermalAlert"))
    (:file "_package_ThermalAlert" :depends-on ("_package"))
    (:file "ThermalAlertVector" :depends-on ("_package_ThermalAlertVector"))
    (:file "_package_ThermalAlertVector" :depends-on ("_package"))
  ))