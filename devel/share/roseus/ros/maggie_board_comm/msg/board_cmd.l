;; Auto-generated. Do not edit!


(when (boundp 'maggie_board_comm::board_cmd)
  (if (not (find-package "MAGGIE_BOARD_COMM"))
    (make-package "MAGGIE_BOARD_COMM"))
  (shadow 'board_cmd (find-package "MAGGIE_BOARD_COMM")))
(unless (find-package "MAGGIE_BOARD_COMM::BOARD_CMD")
  (make-package "MAGGIE_BOARD_COMM::BOARD_CMD"))

(in-package "ROS")
;;//! \htmlinclude board_cmd.msg.html


(defclass maggie_board_comm::board_cmd
  :super ros::object
  :slots (_isLeftLegOnline _isRightLegOnline _isRobotOnGround _enableWheel ))

(defmethod maggie_board_comm::board_cmd
  (:init
   (&key
    ((:isLeftLegOnline __isLeftLegOnline) nil)
    ((:isRightLegOnline __isRightLegOnline) nil)
    ((:isRobotOnGround __isRobotOnGround) nil)
    ((:enableWheel __enableWheel) nil)
    )
   (send-super :init)
   (setq _isLeftLegOnline __isLeftLegOnline)
   (setq _isRightLegOnline __isRightLegOnline)
   (setq _isRobotOnGround __isRobotOnGround)
   (setq _enableWheel __enableWheel)
   self)
  (:isLeftLegOnline
   (&optional (__isLeftLegOnline :null))
   (if (not (eq __isLeftLegOnline :null)) (setq _isLeftLegOnline __isLeftLegOnline)) _isLeftLegOnline)
  (:isRightLegOnline
   (&optional (__isRightLegOnline :null))
   (if (not (eq __isRightLegOnline :null)) (setq _isRightLegOnline __isRightLegOnline)) _isRightLegOnline)
  (:isRobotOnGround
   (&optional (__isRobotOnGround :null))
   (if (not (eq __isRobotOnGround :null)) (setq _isRobotOnGround __isRobotOnGround)) _isRobotOnGround)
  (:enableWheel
   (&optional (__enableWheel :null))
   (if (not (eq __enableWheel :null)) (setq _enableWheel __enableWheel)) _enableWheel)
  (:serialization-length
   ()
   (+
    ;; bool _isLeftLegOnline
    1
    ;; bool _isRightLegOnline
    1
    ;; bool _isRobotOnGround
    1
    ;; bool _enableWheel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isLeftLegOnline
       (if _isLeftLegOnline (write-byte -1 s) (write-byte 0 s))
     ;; bool _isRightLegOnline
       (if _isRightLegOnline (write-byte -1 s) (write-byte 0 s))
     ;; bool _isRobotOnGround
       (if _isRobotOnGround (write-byte -1 s) (write-byte 0 s))
     ;; bool _enableWheel
       (if _enableWheel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isLeftLegOnline
     (setq _isLeftLegOnline (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isRightLegOnline
     (setq _isRightLegOnline (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isRobotOnGround
     (setq _isRobotOnGround (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enableWheel
     (setq _enableWheel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get maggie_board_comm::board_cmd :md5sum-) "88619d4843913e77ca2a39023d862f3a")
(setf (get maggie_board_comm::board_cmd :datatype-) "maggie_board_comm/board_cmd")
(setf (get maggie_board_comm::board_cmd :definition-)
      "bool isLeftLegOnline
bool isRightLegOnline
bool isRobotOnGround
bool enableWheel
")



(provide :maggie_board_comm/board_cmd "88619d4843913e77ca2a39023d862f3a")


