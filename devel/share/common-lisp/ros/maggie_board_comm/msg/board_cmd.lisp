; Auto-generated. Do not edit!


(cl:in-package maggie_board_comm-msg)


;//! \htmlinclude board_cmd.msg.html

(cl:defclass <board_cmd> (roslisp-msg-protocol:ros-message)
  ((isLeftLegOnline
    :reader isLeftLegOnline
    :initarg :isLeftLegOnline
    :type cl:boolean
    :initform cl:nil)
   (isRightLegOnline
    :reader isRightLegOnline
    :initarg :isRightLegOnline
    :type cl:boolean
    :initform cl:nil)
   (isRobotOnGround
    :reader isRobotOnGround
    :initarg :isRobotOnGround
    :type cl:boolean
    :initform cl:nil)
   (enableWheel
    :reader enableWheel
    :initarg :enableWheel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass board_cmd (<board_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <board_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'board_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maggie_board_comm-msg:<board_cmd> is deprecated: use maggie_board_comm-msg:board_cmd instead.")))

(cl:ensure-generic-function 'isLeftLegOnline-val :lambda-list '(m))
(cl:defmethod isLeftLegOnline-val ((m <board_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isLeftLegOnline-val is deprecated.  Use maggie_board_comm-msg:isLeftLegOnline instead.")
  (isLeftLegOnline m))

(cl:ensure-generic-function 'isRightLegOnline-val :lambda-list '(m))
(cl:defmethod isRightLegOnline-val ((m <board_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isRightLegOnline-val is deprecated.  Use maggie_board_comm-msg:isRightLegOnline instead.")
  (isRightLegOnline m))

(cl:ensure-generic-function 'isRobotOnGround-val :lambda-list '(m))
(cl:defmethod isRobotOnGround-val ((m <board_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:isRobotOnGround-val is deprecated.  Use maggie_board_comm-msg:isRobotOnGround instead.")
  (isRobotOnGround m))

(cl:ensure-generic-function 'enableWheel-val :lambda-list '(m))
(cl:defmethod enableWheel-val ((m <board_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm-msg:enableWheel-val is deprecated.  Use maggie_board_comm-msg:enableWheel instead.")
  (enableWheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <board_cmd>) ostream)
  "Serializes a message object of type '<board_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLeftLegOnline) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isRightLegOnline) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isRobotOnGround) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableWheel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <board_cmd>) istream)
  "Deserializes a message object of type '<board_cmd>"
    (cl:setf (cl:slot-value msg 'isLeftLegOnline) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isRightLegOnline) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isRobotOnGround) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enableWheel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<board_cmd>)))
  "Returns string type for a message object of type '<board_cmd>"
  "maggie_board_comm/board_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'board_cmd)))
  "Returns string type for a message object of type 'board_cmd"
  "maggie_board_comm/board_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<board_cmd>)))
  "Returns md5sum for a message object of type '<board_cmd>"
  "88619d4843913e77ca2a39023d862f3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'board_cmd)))
  "Returns md5sum for a message object of type 'board_cmd"
  "88619d4843913e77ca2a39023d862f3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<board_cmd>)))
  "Returns full string definition for message of type '<board_cmd>"
  (cl:format cl:nil "bool isLeftLegOnline~%bool isRightLegOnline~%bool isRobotOnGround~%bool enableWheel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'board_cmd)))
  "Returns full string definition for message of type 'board_cmd"
  (cl:format cl:nil "bool isLeftLegOnline~%bool isRightLegOnline~%bool isRobotOnGround~%bool enableWheel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <board_cmd>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <board_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'board_cmd
    (cl:cons ':isLeftLegOnline (isLeftLegOnline msg))
    (cl:cons ':isRightLegOnline (isRightLegOnline msg))
    (cl:cons ':isRobotOnGround (isRobotOnGround msg))
    (cl:cons ':enableWheel (enableWheel msg))
))
