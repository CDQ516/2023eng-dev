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

class board_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isLeftWheelOnline = null;
      this.isRightWheelOnline = null;
      this.isWheelEnabled = null;
      this.isForceShutdownTriggered = null;
      this.tiltAngle = null;
      this.zMove = null;
    }
    else {
      if (initObj.hasOwnProperty('isLeftWheelOnline')) {
        this.isLeftWheelOnline = initObj.isLeftWheelOnline
      }
      else {
        this.isLeftWheelOnline = 0;
      }
      if (initObj.hasOwnProperty('isRightWheelOnline')) {
        this.isRightWheelOnline = initObj.isRightWheelOnline
      }
      else {
        this.isRightWheelOnline = 0;
      }
      if (initObj.hasOwnProperty('isWheelEnabled')) {
        this.isWheelEnabled = initObj.isWheelEnabled
      }
      else {
        this.isWheelEnabled = 0;
      }
      if (initObj.hasOwnProperty('isForceShutdownTriggered')) {
        this.isForceShutdownTriggered = initObj.isForceShutdownTriggered
      }
      else {
        this.isForceShutdownTriggered = 0;
      }
      if (initObj.hasOwnProperty('tiltAngle')) {
        this.tiltAngle = initObj.tiltAngle
      }
      else {
        this.tiltAngle = 0.0;
      }
      if (initObj.hasOwnProperty('zMove')) {
        this.zMove = initObj.zMove
      }
      else {
        this.zMove = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type board_status
    // Serialize message field [isLeftWheelOnline]
    bufferOffset = _serializer.uint8(obj.isLeftWheelOnline, buffer, bufferOffset);
    // Serialize message field [isRightWheelOnline]
    bufferOffset = _serializer.uint8(obj.isRightWheelOnline, buffer, bufferOffset);
    // Serialize message field [isWheelEnabled]
    bufferOffset = _serializer.uint8(obj.isWheelEnabled, buffer, bufferOffset);
    // Serialize message field [isForceShutdownTriggered]
    bufferOffset = _serializer.uint8(obj.isForceShutdownTriggered, buffer, bufferOffset);
    // Serialize message field [tiltAngle]
    bufferOffset = _serializer.float32(obj.tiltAngle, buffer, bufferOffset);
    // Serialize message field [zMove]
    bufferOffset = _serializer.float32(obj.zMove, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type board_status
    let len;
    let data = new board_status(null);
    // Deserialize message field [isLeftWheelOnline]
    data.isLeftWheelOnline = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isRightWheelOnline]
    data.isRightWheelOnline = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isWheelEnabled]
    data.isWheelEnabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isForceShutdownTriggered]
    data.isForceShutdownTriggered = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tiltAngle]
    data.tiltAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zMove]
    data.zMove = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'maggie_board_comm/board_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05468699310a811ac670b36ca3436d6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 isLeftWheelOnline
    uint8 isRightWheelOnline
    uint8 isWheelEnabled
    uint8 isForceShutdownTriggered
    float32 tiltAngle
    float32 zMove
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new board_status(null);
    if (msg.isLeftWheelOnline !== undefined) {
      resolved.isLeftWheelOnline = msg.isLeftWheelOnline;
    }
    else {
      resolved.isLeftWheelOnline = 0
    }

    if (msg.isRightWheelOnline !== undefined) {
      resolved.isRightWheelOnline = msg.isRightWheelOnline;
    }
    else {
      resolved.isRightWheelOnline = 0
    }

    if (msg.isWheelEnabled !== undefined) {
      resolved.isWheelEnabled = msg.isWheelEnabled;
    }
    else {
      resolved.isWheelEnabled = 0
    }

    if (msg.isForceShutdownTriggered !== undefined) {
      resolved.isForceShutdownTriggered = msg.isForceShutdownTriggered;
    }
    else {
      resolved.isForceShutdownTriggered = 0
    }

    if (msg.tiltAngle !== undefined) {
      resolved.tiltAngle = msg.tiltAngle;
    }
    else {
      resolved.tiltAngle = 0.0
    }

    if (msg.zMove !== undefined) {
      resolved.zMove = msg.zMove;
    }
    else {
      resolved.zMove = 0.0
    }

    return resolved;
    }
};

module.exports = board_status;
