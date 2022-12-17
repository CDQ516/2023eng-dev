;; Auto-generated. Do not edit!


(when (boundp 'maggie_board_comm::board_status)
  (if (not (find-package "MAGGIE_BOARD_COMM"))
    (make-package "MAGGIE_BOARD_COMM"))
  (shadow 'board_status (find-package "MAGGIE_BOARD_COMM")))
(unless (find-package "MAGGIE_BOARD_COMM::BOARD_STATUS")
  (make-package "MAGGIE_BOARD_COMM::BOARD_STATUS"))

(in-package "ROS")
;;//! \htmlinclude board_status.msg.html


(defclass maggie_board_comm::board_status
  :super ros::object
  :slots (_isLeftWheelOnline _isRightWheelOnline _isWheelEnabled _isForceShutdownTriggered _tiltAngle _zMove ))

(defmethod maggie_board_comm::board_status
  (:init
   (&key
    ((:isLeftWheelOnline __isLeftWheelOnline) 0)
    ((:isRightWheelOnline __isRightWheelOnline) 0)
    ((:isWheelEnabled __isWheelEnabled) 0)
    ((:isForceShutdownTriggered __isForceShutdownTriggered) 0)
    ((:tiltAngle __tiltAngle) 0.0)
    ((:zMove __zMove) 0.0)
    )
   (send-super :init)
   (setq _isLeftWheelOnline (round __isLeftWheelOnline))
   (setq _isRightWheelOnline (round __isRightWheelOnline))
   (setq _isWheelEnabled (round __isWheelEnabled))
   (setq _isForceShutdownTriggered (round __isForceShutdownTriggered))
   (setq _tiltAngle (float __tiltAngle))
   (setq _zMove (float __zMove))
   self)
  (:isLeftWheelOnline
   (&optional __isLeftWheelOnline)
   (if __isLeftWheelOnline (setq _isLeftWheelOnline __isLeftWheelOnline)) _isLeftWheelOnline)
  (:isRightWheelOnline
   (&optional __isRightWheelOnline)
   (if __isRightWheelOnline (setq _isRightWheelOnline __isRightWheelOnline)) _isRightWheelOnline)
  (:isWheelEnabled
   (&optional __isWheelEnabled)
   (if __isWheelEnabled (setq _isWheelEnabled __isWheelEnabled)) _isWheelEnabled)
  (:isForceShutdownTriggered
   (&optional __isForceShutdownTriggered)
   (if __isForceShutdownTriggered (setq _isForceShutdownTriggered __isForceShutdownTriggered)) _isForceShutdownTriggered)
  (:tiltAngle
   (&optional __tiltAngle)
   (if __tiltAngle (setq _tiltAngle __tiltAngle)) _tiltAngle)
  (:zMove
   (&optional __zMove)
   (if __zMove (setq _zMove __zMove)) _zMove)
  (:serialization-length
   ()
   (+
    ;; uint8 _isLeftWheelOnline
    1
    ;; uint8 _isRightWheelOnline
    1
    ;; uint8 _isWheelEnabled
    1
    ;; uint8 _isForceShutdownTriggered
    1
    ;; float32 _tiltAngle
    4
    ;; float32 _zMove
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isLeftWheelOnline
       (write-byte _isLeftWheelOnline s)
     ;; uint8 _isRightWheelOnline
       (write-byte _isRightWheelOnline s)
     ;; uint8 _isWheelEnabled
       (write-byte _isWheelEnabled s)
     ;; uint8 _isForceShutdownTriggered
       (write-byte _isForceShutdownTriggered s)
     ;; float32 _tiltAngle
       (sys::poke _tiltAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zMove
       (sys::poke _zMove (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isLeftWheelOnline
     (setq _isLeftWheelOnline (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isRightWheelOnline
     (setq _isRightWheelOnline (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isWheelEnabled
     (setq _isWheelEnabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isForceShutdownTriggered
     (setq _isForceShutdownTriggered (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _tiltAngle
     (setq _tiltAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zMove
     (setq _zMove (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get maggie_board_comm::board_status :md5sum-) "05468699310a811ac670b36ca3436d6c")
(setf (get maggie_board_comm::board_status :datatype-) "maggie_board_comm/board_status")
(setf (get maggie_board_comm::board_status :definition-)
      "uint8 isLeftWheelOnline
uint8 isRightWheelOnline
uint8 isWheelEnabled
uint8 isForceShutdownTriggered
float32 tiltAngle
float32 zMove
")



(provide :maggie_board_comm/board_status "05468699310a811ac670b36ca3436d6c")


