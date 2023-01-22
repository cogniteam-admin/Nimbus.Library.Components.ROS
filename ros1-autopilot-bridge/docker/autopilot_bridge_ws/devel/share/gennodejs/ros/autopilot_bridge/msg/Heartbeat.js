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

class Heartbeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.counter = null;
    }
    else {
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Heartbeat
    // Serialize message field [counter]
    bufferOffset = _serializer.uint32(obj.counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Heartbeat
    let len;
    let data = new Heartbeat(null);
    // Deserialize message field [counter]
    data.counter = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/Heartbeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edfa4d08cb5e6d4c5fd223930476506d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 counter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Heartbeat(null);
    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    return resolved;
    }
};

module.exports = Heartbeat;
