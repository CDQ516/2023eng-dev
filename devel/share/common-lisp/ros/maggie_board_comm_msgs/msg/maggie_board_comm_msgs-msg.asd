
(cl:in-package :asdf)

(defsystem "maggie_board_comm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joint_angle_cmd" :depends-on ("_package_joint_angle_cmd"))
    (:file "_package_joint_angle_cmd" :depends-on ("_package"))
  ))