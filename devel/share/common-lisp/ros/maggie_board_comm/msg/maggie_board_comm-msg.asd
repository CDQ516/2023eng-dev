
(cl:in-package :asdf)

(defsystem "maggie_board_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "board_cmd" :depends-on ("_package_board_cmd"))
    (:file "_package_board_cmd" :depends-on ("_package"))
    (:file "board_status" :depends-on ("_package_board_status"))
    (:file "_package_board_status" :depends-on ("_package"))
    (:file "joint_angle_cmd" :depends-on ("_package_joint_angle_cmd"))
    (:file "_package_joint_angle_cmd" :depends-on ("_package"))
  ))