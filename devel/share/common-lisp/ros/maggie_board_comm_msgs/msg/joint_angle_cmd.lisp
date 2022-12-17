; Auto-generated. Do not edit!


(cl:in-package maggie_board_comm_msgs-msg)


;//! \htmlinclude joint_angle_cmd.msg.html

(cl:defclass <joint_angle_cmd> (roslisp-msg-protocol:ros-message)
  ((joint1
    :reader joint1
    :initarg :joint1
    :type cl:float
    :initform 0.0)
   (joint2
    :reader joint2
    :initarg :joint2
    :type cl:float
    :initform 0.0))
)

(cl:defclass joint_angle_cmd (<joint_angle_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_angle_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_angle_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maggie_board_comm_msgs-msg:<joint_angle_cmd> is deprecated: use maggie_board_comm_msgs-msg:joint_angle_cmd instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <joint_angle_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm_msgs-msg:joint1-val is deprecated.  Use maggie_board_comm_msgs-msg:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <joint_angle_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maggie_board_comm_msgs-msg:joint2-val is deprecated.  Use maggie_board_comm_msgs-msg:joint2 instead.")
  (joint2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_angle_cmd>) ostream)
  "Serializes a message object of type '<joint_angle_cmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_angle_cmd>) istream)
  "Deserializes a message object of type '<joint_angle_cmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_angle_cmd>)))
  "Returns string type for a message object of type '<joint_angle_cmd>"
  "maggie_board_comm_msgs/joint_angle_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_angle_cmd)))
  "Returns string type for a message object of type 'joint_angle_cmd"
  "maggie_board_comm_msgs/joint_angle_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_angle_cmd>)))
  "Returns md5sum for a message object of type '<joint_angle_cmd>"
  "a93712cb5533b8fbec1204e5f9479119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_angle_cmd)))
  "Returns md5sum for a message object of type 'joint_angle_cmd"
  "a93712cb5533b8fbec1204e5f9479119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_angle_cmd>)))
  "Returns full string definition for message of type '<joint_angle_cmd>"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_angle_cmd)))
  "Returns full string definition for message of type 'joint_angle_cmd"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_angle_cmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_angle_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_angle_cmd
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
))
