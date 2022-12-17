; Auto-generated. Do not edit!


(cl:in-package maggie_board_comm-msg)


;//! \htmlinclude board_status.msg.html

(cl:defclass <board_status> (roslisp-msg-protocol:ros-message)
  ((isLeftWheelOnline
    :reader isLeftWheelOnline
    :initarg :isLeftWheelOnline
    :type cl:fixnum
    :initform 0)
   (isRightWheelOnline
    :reader isRightWheelOnline
    :initarg :isRightWheelOnline
    :type cl:fixnum
    :initform 0)
   (isWheelEnabled
    :reader isWheelEnabled
    :initarg :isWheelEnabled
    :type cl:fixnum
    :initform 0)
   (isForceShutdownTriggered
    :reader isForceShutdownTriggered
    :initarg :isForceShutdownTriggered
    :type cl:fixnum
    :initform 0)
   (tiltAngle
    :reader tiltAngle
    :initarg :tiltAngle
    :type cl:float
    :initform 0.0)
   (zMove
    :reader zMove
    :initarg :zMove
    :type cl:float
    :initform 0.0))
)

(cl:defclass board_status (<board_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <board_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'board_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maggie_board_comm-msg:<board_status> is deprecated: use maggie_board_comm-msg:board_status instead.")))

(cl:ensure-generic-function 'isLeftWheelOnline-val :lambda-list '(m))
(cl:defmethod isLeftWheelOnline-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isLeftWheelOnline-val is deprecated.  Use maggie_board_comm-msg:isLeftWheelOnline instead.")
  (isLeftWheelOnline m))

(cl:ensure-generic-function 'isRightWheelOnline-val :lambda-list '(m))
(cl:defmethod isRightWheelOnline-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isRightWheelOnline-val is deprecated.  Use maggie_board_comm-msg:isRightWheelOnline instead.")
  (isRightWheelOnline m))

(cl:ensure-generic-function 'isWheelEnabled-val :lambda-list '(m))
(cl:defmethod isWheelEnabled-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isWheelEnabled-val is deprecated.  Use maggie_board_comm-msg:isWheelEnabled instead.")
  (isWheelEnabled m))

(cl:ensure-generic-function 'isForceShutdownTriggered-val :lambda-list '(m))
(cl:defmethod isForceShutdownTriggered-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isForceShutdownTriggered-val is deprecated.  Use maggie_board_comm-msg:isForceShutdownTriggered instead.")
  (isForceShutdownTriggered m))

(cl:ensure-generic-function 'tiltAngle-val :lambda-list '(m))
(cl:defmethod tiltAngle-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:tiltAngle-val is deprecated.  Use maggie_board_comm-msg:tiltAngle instead.")
  (tiltAngle m))

(cl:ensure-generic-function 'zMove-val :lambda-list '(m))
(cl:defmethod zMove-val ((m <board_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:zMove-val is deprecated.  Use maggie_board_comm-msg:zMove instead.")
  (zMove m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <board_status>) ostream)
  "Serializes a message object of type '<board_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isLeftWheelOnline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isRightWheelOnline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isWheelEnabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isForceShutdownTriggered)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tiltAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zMove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <board_status>) istream)
  "Deserializes a message object of type '<board_status>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isLeftWheelOnline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isRightWheelOnline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isWheelEnabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isForceShutdownTriggered)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tiltAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zMove) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<board_status>)))
  "Returns string type for a message object of type '<board_status>"
  "maggie_board_comm/board_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'board_status)))
  "Returns string type for a message object of type 'board_status"
  "maggie_board_comm/board_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<board_status>)))
  "Returns md5sum for a message object of type '<board_status>"
  "05468699310a811ac670b36ca3436d6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'board_status)))
  "Returns md5sum for a message object of type 'board_status"
  "05468699310a811ac670b36ca3436d6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<board_status>)))
  "Returns full string definition for message of type '<board_status>"
  (cl:format cl:nil "uint8 isLeftWheelOnline~%uint8 isRightWheelOnline~%uint8 isWheelEnabled~%uint8 isForceShutdownTriggered~%float32 tiltAngle~%float32 zMove~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'board_status)))
  "Returns full string definition for message of type 'board_status"
  (cl:format cl:nil "uint8 isLeftWheelOnline~%uint8 isRightWheelOnline~%uint8 isWheelEnabled~%uint8 isForceShutdownTriggered~%float32 tiltAngle~%float32 zMove~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <board_status>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <board_status>))
  "Converts a ROS message object to a list"
  (cl:list 'board_status
    (cl:cons ':isLeftWheelOnline (isLeftWheelOnline msg))
    (cl:cons ':isRightWheelOnline (isRightWheelOnline msg))
    (cl:cons ':isWheelEnabled (isWheelEnabled msg))
    (cl:cons ':isForceShutdownTriggered (isForceShutdownTriggered msg))
    (cl:cons ':tiltAngle (tiltAngle msg))
    (cl:cons ':zMove (zMove msg))
))
