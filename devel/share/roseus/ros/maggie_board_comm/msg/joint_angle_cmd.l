;; Auto-generated. Do not edit!


(when (boundp 'maggie_board_comm::joint_angle_cmd)
  (if (not (find-package "MAGGIE_BOARD_COMM"))
    (make-package "MAGGIE_BOARD_COMM"))
  (shadow 'joint_angle_cmd (find-package "MAGGIE_BOARD_COMM")))
(unless (find-package "MAGGIE_BOARD_COMM::JOINT_ANGLE_CMD")
  (make-package "MAGGIE_BOARD_COMM::JOINT_ANGLE_CMD"))

(in-package "ROS")
;;//! \htmlinclude joint_angle_cmd.msg.html


(defclass maggie_board_comm::joint_angle_cmd
  :super ros::object
  :slots (_joint1 _joint2 ))

(defmethod maggie_board_comm::joint_angle_cmd
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:serialization-length
   ()
   (+
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get maggie_board_comm::joint_angle_cmd :md5sum-) "a93712cb5533b8fbec1204e5f9479119")
(setf (get maggie_board_comm::joint_angle_cmd :datatype-) "maggie_board_comm/joint_angle_cmd")
(setf (get maggie_board_comm::joint_angle_cmd :definition-)
      "float32 joint1
float32 joint2
")



(provide :maggie_board_comm/joint_angle_cmd "a93712cb5533b8fbec1204e5f9479119")


