
(cl:in-package :asdf)

(defsystem "sine_wave-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MultTwoFloats" :depends-on ("_package_MultTwoFloats"))
    (:file "_package_MultTwoFloats" :depends-on ("_package"))
  ))