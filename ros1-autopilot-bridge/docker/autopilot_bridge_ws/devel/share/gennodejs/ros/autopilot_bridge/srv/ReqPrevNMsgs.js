// Auto-generated. Do not edit!

// (in-package autopilot_bridge.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let AutoPilotMsg = require('../msg/AutoPilotMsg.js');

//-----------------------------------------------------------

class ReqPrevNMsgsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.n = null;
      this.since_seq = null;
    }
    else {
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = 0;
      }
      if (initObj.hasOwnProperty('since_seq')) {
        this.since_seq = initObj.since_seq
      }
      else {
        this.since_seq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReqPrevNMsgsRequest
    // Serialize message field [n]
    bufferOffset = _serializer.uint8(obj.n, buffer, bufferOffset);
    // Serialize message field [since_seq]
    bufferOffset = _serializer.uint32(obj.since_seq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReqPrevNMsgsRequest
    let len;
    let data = new ReqPrevNMsgsRequest(null);
    // Deserialize message field [n]
    data.n = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [since_seq]
    data.since_seq = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/ReqPrevNMsgsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4242952d50b7bebbc5d66d81eb08899';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 n
    uint32 since_seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReqPrevNMsgsRequest(null);
    if (msg.n !== undefined) {
      resolved.n = msg.n;
    }
    else {
      resolved.n = 0
    }

    if (msg.since_seq !== undefined) {
      resolved.since_seq = msg.since_seq;
    }
    else {
      resolved.since_seq = 0
    }

    return resolved;
    }
};

class ReqPrevNMsgsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('msgs')) {
        this.msgs = initObj.msgs
      }
      else {
        this.msgs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReqPrevNMsgsResponse
    // Serialize message field [msgs]
    // Serialize the length for message field [msgs]
    bufferOffset = _serializer.uint32(obj.msgs.length, buffer, bufferOffset);
    obj.msgs.forEach((val) => {
      bufferOffset = AutoPilotMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReqPrevNMsgsResponse
    let len;
    let data = new ReqPrevNMsgsResponse(null);
    // Deserialize message field [msgs]
    // Deserialize array length for message field [msgs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.msgs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.msgs[i] = AutoPilotMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.msgs.forEach((val) => {
      length += AutoPilotMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/ReqPrevNMsgsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b83e643d817366665bc7d105b0ffecd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AutoPilotMsg[] msgs
    
    
    ================================================================================
    MSG: autopilot_bridge/AutoPilotMsg
    uint32  seq
    string  text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReqPrevNMsgsResponse(null);
    if (msg.msgs !== undefined) {
      resolved.msgs = new Array(msg.msgs.length);
      for (let i = 0; i < resolved.msgs.length; ++i) {
        resolved.msgs[i] = AutoPilotMsg.Resolve(msg.msgs[i]);
      }
    }
    else {
      resolved.msgs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReqPrevNMsgsRequest,
  Response: ReqPrevNMsgsResponse,
  md5sum() { return '5b9a3726344783db5cbe1607b04eb17e'; },
  datatype() { return 'autopilot_bridge/ReqPrevNMsgs'; }
};
