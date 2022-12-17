// Auto-generated. Do not edit!

// (in-package maggie_board_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class board_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isLeftLegOnline = null;
      this.isRightLegOnline = null;
      this.isRobotOnGround = null;
      this.enableWheel = null;
    }
    else {
      if (initObj.hasOwnProperty('isLeftLegOnline')) {
        this.isLeftLegOnline = initObj.isLeftLegOnline
      }
      else {
        this.isLeftLegOnline = false;
      }
      if (initObj.hasOwnProperty('isRightLegOnline')) {
        this.isRightLegOnline = initObj.isRightLegOnline
      }
      else {
        this.isRightLegOnline = false;
      }
      if (initObj.hasOwnProperty('isRobotOnGround')) {
        this.isRobotOnGround = initObj.isRobotOnGround
      }
      else {
        this.isRobotOnGround = false;
      }
      if (initObj.hasOwnProperty('enableWheel')) {
        this.enableWheel = initObj.enableWheel
      }
      else {
        this.enableWheel = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type board_cmd
    // Serialize message field [isLeftLegOnline]
    bufferOffset = _serializer.bool(obj.isLeftLegOnline, buffer, bufferOffset);
    // Serialize message field [isRightLegOnline]
    bufferOffset = _serializer.bool(obj.isRightLegOnline, buffer, bufferOffset);
    // Serialize message field [isRobotOnGround]
    bufferOffset = _serializer.bool(obj.isRobotOnGround, buffer, bufferOffset);
    // Serialize message field [enableWheel]
    bufferOffset = _serializer.bool(obj.enableWheel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type board_cmd
    let len;
    let data = new board_cmd(null);
    // Deserialize message field [isLeftLegOnline]
    data.isLeftLegOnline = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isRightLegOnline]
    data.isRightLegOnline = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isRobotOnGround]
    data.isRobotOnGround = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enableWheel]
    data.enableWheel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maggie_board_comm/board_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88619d4843913e77ca2a39023d862f3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isLeftLegOnline
    bool isRightLegOnline
    bool isRobotOnGround
    bool enableWheel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new board_cmd(null);
    if (msg.isLeftLegOnline !== undefined) {
      resolved.isLeftLegOnline = msg.isLeftLegOnline;
    }
    else {
      resolved.isLeftLegOnline = false
    }

    if (msg.isRightLegOnline !== undefined) {
      resolved.isRightLegOnline = msg.isRightLegOnline;
    }
    else {
      resolved.isRightLegOnline = false
    }

    if (msg.isRobotOnGround !== undefined) {
      resolved.isRobotOnGround = msg.isRobotOnGround;
    }
    else {
      resolved.isRobotOnGround = false
    }

    if (msg.enableWheel !== undefined) {
      resolved.enableWheel = msg.enableWheel;
    }
    else {
      resolved.enableWheel = false
    }

    return resolved;
    }
};

module.exports = board_cmd;
