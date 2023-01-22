// Auto-generated. Do not edit!

// (in-package autopilot_bridge.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParamPair = require('../msg/ParamPair.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param = null;
    }
    else {
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetListRequest
    // Serialize message field [param]
    // Serialize the length for message field [param]
    bufferOffset = _serializer.uint32(obj.param.length, buffer, bufferOffset);
    obj.param.forEach((val) => {
      bufferOffset = ParamPair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetListRequest
    let len;
    let data = new ParamSetListRequest(null);
    // Deserialize message field [param]
    // Deserialize array length for message field [param]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.param = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.param[i] = ParamPair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.param.forEach((val) => {
      length += ParamPair.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/ParamSetListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ad4bd52a388b0c97e78555e2513d443';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ParamPair[] param
    
    ================================================================================
    MSG: autopilot_bridge/ParamPair
    string name
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamSetListRequest(null);
    if (msg.param !== undefined) {
      resolved.param = new Array(msg.param.length);
      for (let i = 0; i < resolved.param.length; ++i) {
        resolved.param[i] = ParamPair.Resolve(msg.param[i]);
      }
    }
    else {
      resolved.param = []
    }

    return resolved;
    }
};

class ParamSetListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetListResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetListResponse
    let len;
    let data = new ParamSetListResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/ParamSetListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamSetListResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ParamSetListRequest,
  Response: ParamSetListResponse,
  md5sum() { return '7c20195a6434b00060c5d34397ef8702'; },
  datatype() { return 'autopilot_bridge/ParamSetList'; }
};
