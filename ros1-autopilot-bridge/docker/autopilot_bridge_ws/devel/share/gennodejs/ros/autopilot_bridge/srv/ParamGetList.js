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

let ParamPair = require('../msg/ParamPair.js');

//-----------------------------------------------------------

class ParamGetListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamGetListRequest
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetListRequest
    let len;
    let data = new ParamGetListRequest(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/ParamGetListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f2d21c30868b92dc41a0431bacd47b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamGetListRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    return resolved;
    }
};

class ParamGetListResponse {
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
    // Serializes a message object of type ParamGetListResponse
    // Serialize message field [param]
    // Serialize the length for message field [param]
    bufferOffset = _serializer.uint32(obj.param.length, buffer, bufferOffset);
    obj.param.forEach((val) => {
      bufferOffset = ParamPair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetListResponse
    let len;
    let data = new ParamGetListResponse(null);
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
    return 'autopilot_bridge/ParamGetListResponse';
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
    const resolved = new ParamGetListResponse(null);
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

module.exports = {
  Request: ParamGetListRequest,
  Response: ParamGetListResponse,
  md5sum() { return 'e2cef5924ec02ac5c653b10adb157290'; },
  datatype() { return 'autopilot_bridge/ParamGetList'; }
};
