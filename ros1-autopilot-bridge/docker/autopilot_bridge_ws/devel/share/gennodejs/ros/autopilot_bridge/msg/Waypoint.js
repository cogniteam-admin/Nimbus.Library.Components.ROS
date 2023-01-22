// Auto-generated. Do not edit!

// (in-package autopilot_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.frame = null;
      this.command = null;
      this.current = null;
      this.autocontinue = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.x = null;
      this.y = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = false;
      }
      if (initObj.hasOwnProperty('autocontinue')) {
        this.autocontinue = initObj.autocontinue
      }
      else {
        this.autocontinue = false;
      }
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0.0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0.0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0.0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [seq]
    bufferOffset = _serializer.uint16(obj.seq, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint8(obj.frame, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.bool(obj.current, buffer, bufferOffset);
    // Serialize message field [autocontinue]
    bufferOffset = _serializer.bool(obj.autocontinue, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.float64(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float64(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float64(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float64(obj.param4, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [autocontinue]
    data.autocontinue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55967e54789fbaf753fa65ffa29bd0a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 seq
    uint8 frame
    uint16 command
    bool current
    bool autocontinue
    float64 param1
    float64 param2
    float64 param3
    float64 param4
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = false
    }

    if (msg.autocontinue !== undefined) {
      resolved.autocontinue = msg.autocontinue;
    }
    else {
      resolved.autocontinue = false
    }

    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0.0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0.0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0.0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    return resolved;
    }
};

module.exports = Waypoint;
