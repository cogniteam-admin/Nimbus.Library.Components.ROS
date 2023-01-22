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

let Waypoint = require('../msg/Waypoint.js');

//-----------------------------------------------------------

class WPGetRangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.low = null;
      this.high = null;
    }
    else {
      if (initObj.hasOwnProperty('low')) {
        this.low = initObj.low
      }
      else {
        this.low = 0;
      }
      if (initObj.hasOwnProperty('high')) {
        this.high = initObj.high
      }
      else {
        this.high = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WPGetRangeRequest
    // Serialize message field [low]
    bufferOffset = _serializer.uint16(obj.low, buffer, bufferOffset);
    // Serialize message field [high]
    bufferOffset = _serializer.uint16(obj.high, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WPGetRangeRequest
    let len;
    let data = new WPGetRangeRequest(null);
    // Deserialize message field [low]
    data.low = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [high]
    data.high = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/WPGetRangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2931e927748f0f9b9d2688d0a4e3a3f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 low
    uint16 high
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WPGetRangeRequest(null);
    if (msg.low !== undefined) {
      resolved.low = msg.low;
    }
    else {
      resolved.low = 0
    }

    if (msg.high !== undefined) {
      resolved.high = msg.high;
    }
    else {
      resolved.high = 0
    }

    return resolved;
    }
};

class WPGetRangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WPGetRangeResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WPGetRangeResponse
    let len;
    let data = new WPGetRangeResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 63 * object.points.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/WPGetRangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61fd937ff9a773d87567a2f8da6a06ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    Waypoint[] points
    
    
    ================================================================================
    MSG: autopilot_bridge/Waypoint
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
    const resolved = new WPGetRangeResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Waypoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = {
  Request: WPGetRangeRequest,
  Response: WPGetRangeResponse,
  md5sum() { return 'a5c104ffb8d6e855f74938b0261a09c9'; },
  datatype() { return 'autopilot_bridge/WPGetRange'; }
};
