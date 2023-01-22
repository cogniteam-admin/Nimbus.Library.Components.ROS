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


//-----------------------------------------------------------

class VersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionRequest
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionRequest
    let len;
    let data = new VersionRequest(null);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/VersionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e929ace7fd80dc265b8b96078f41e82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 timeout
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionRequest(null);
    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    return resolved;
    }
};

class VersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.cap_mission_float = null;
      this.cap_param_float = null;
      this.cap_mission_int = null;
      this.cap_command_int = null;
      this.cap_param_union = null;
      this.cap_ftp = null;
      this.cap_set_attitude = null;
      this.cap_set_position_local = null;
      this.cap_set_position_global = null;
      this.cap_terrain = null;
      this.cap_set_actuator = null;
      this.flight_sw = null;
      this.middleware = null;
      this.os_sw = null;
      this.board = null;
      this.flight_custom = null;
      this.middleware_custom = null;
      this.os_custom = null;
      this.vendor_id = null;
      this.product_id = null;
      this.uid = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('cap_mission_float')) {
        this.cap_mission_float = initObj.cap_mission_float
      }
      else {
        this.cap_mission_float = false;
      }
      if (initObj.hasOwnProperty('cap_param_float')) {
        this.cap_param_float = initObj.cap_param_float
      }
      else {
        this.cap_param_float = false;
      }
      if (initObj.hasOwnProperty('cap_mission_int')) {
        this.cap_mission_int = initObj.cap_mission_int
      }
      else {
        this.cap_mission_int = false;
      }
      if (initObj.hasOwnProperty('cap_command_int')) {
        this.cap_command_int = initObj.cap_command_int
      }
      else {
        this.cap_command_int = false;
      }
      if (initObj.hasOwnProperty('cap_param_union')) {
        this.cap_param_union = initObj.cap_param_union
      }
      else {
        this.cap_param_union = false;
      }
      if (initObj.hasOwnProperty('cap_ftp')) {
        this.cap_ftp = initObj.cap_ftp
      }
      else {
        this.cap_ftp = false;
      }
      if (initObj.hasOwnProperty('cap_set_attitude')) {
        this.cap_set_attitude = initObj.cap_set_attitude
      }
      else {
        this.cap_set_attitude = false;
      }
      if (initObj.hasOwnProperty('cap_set_position_local')) {
        this.cap_set_position_local = initObj.cap_set_position_local
      }
      else {
        this.cap_set_position_local = false;
      }
      if (initObj.hasOwnProperty('cap_set_position_global')) {
        this.cap_set_position_global = initObj.cap_set_position_global
      }
      else {
        this.cap_set_position_global = false;
      }
      if (initObj.hasOwnProperty('cap_terrain')) {
        this.cap_terrain = initObj.cap_terrain
      }
      else {
        this.cap_terrain = false;
      }
      if (initObj.hasOwnProperty('cap_set_actuator')) {
        this.cap_set_actuator = initObj.cap_set_actuator
      }
      else {
        this.cap_set_actuator = false;
      }
      if (initObj.hasOwnProperty('flight_sw')) {
        this.flight_sw = initObj.flight_sw
      }
      else {
        this.flight_sw = 0;
      }
      if (initObj.hasOwnProperty('middleware')) {
        this.middleware = initObj.middleware
      }
      else {
        this.middleware = 0;
      }
      if (initObj.hasOwnProperty('os_sw')) {
        this.os_sw = initObj.os_sw
      }
      else {
        this.os_sw = 0;
      }
      if (initObj.hasOwnProperty('board')) {
        this.board = initObj.board
      }
      else {
        this.board = 0;
      }
      if (initObj.hasOwnProperty('flight_custom')) {
        this.flight_custom = initObj.flight_custom
      }
      else {
        this.flight_custom = '';
      }
      if (initObj.hasOwnProperty('middleware_custom')) {
        this.middleware_custom = initObj.middleware_custom
      }
      else {
        this.middleware_custom = '';
      }
      if (initObj.hasOwnProperty('os_custom')) {
        this.os_custom = initObj.os_custom
      }
      else {
        this.os_custom = '';
      }
      if (initObj.hasOwnProperty('vendor_id')) {
        this.vendor_id = initObj.vendor_id
      }
      else {
        this.vendor_id = 0;
      }
      if (initObj.hasOwnProperty('product_id')) {
        this.product_id = initObj.product_id
      }
      else {
        this.product_id = 0;
      }
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [cap_mission_float]
    bufferOffset = _serializer.bool(obj.cap_mission_float, buffer, bufferOffset);
    // Serialize message field [cap_param_float]
    bufferOffset = _serializer.bool(obj.cap_param_float, buffer, bufferOffset);
    // Serialize message field [cap_mission_int]
    bufferOffset = _serializer.bool(obj.cap_mission_int, buffer, bufferOffset);
    // Serialize message field [cap_command_int]
    bufferOffset = _serializer.bool(obj.cap_command_int, buffer, bufferOffset);
    // Serialize message field [cap_param_union]
    bufferOffset = _serializer.bool(obj.cap_param_union, buffer, bufferOffset);
    // Serialize message field [cap_ftp]
    bufferOffset = _serializer.bool(obj.cap_ftp, buffer, bufferOffset);
    // Serialize message field [cap_set_attitude]
    bufferOffset = _serializer.bool(obj.cap_set_attitude, buffer, bufferOffset);
    // Serialize message field [cap_set_position_local]
    bufferOffset = _serializer.bool(obj.cap_set_position_local, buffer, bufferOffset);
    // Serialize message field [cap_set_position_global]
    bufferOffset = _serializer.bool(obj.cap_set_position_global, buffer, bufferOffset);
    // Serialize message field [cap_terrain]
    bufferOffset = _serializer.bool(obj.cap_terrain, buffer, bufferOffset);
    // Serialize message field [cap_set_actuator]
    bufferOffset = _serializer.bool(obj.cap_set_actuator, buffer, bufferOffset);
    // Serialize message field [flight_sw]
    bufferOffset = _serializer.uint32(obj.flight_sw, buffer, bufferOffset);
    // Serialize message field [middleware]
    bufferOffset = _serializer.uint32(obj.middleware, buffer, bufferOffset);
    // Serialize message field [os_sw]
    bufferOffset = _serializer.uint32(obj.os_sw, buffer, bufferOffset);
    // Serialize message field [board]
    bufferOffset = _serializer.uint32(obj.board, buffer, bufferOffset);
    // Serialize message field [flight_custom]
    bufferOffset = _serializer.string(obj.flight_custom, buffer, bufferOffset);
    // Serialize message field [middleware_custom]
    bufferOffset = _serializer.string(obj.middleware_custom, buffer, bufferOffset);
    // Serialize message field [os_custom]
    bufferOffset = _serializer.string(obj.os_custom, buffer, bufferOffset);
    // Serialize message field [vendor_id]
    bufferOffset = _serializer.uint16(obj.vendor_id, buffer, bufferOffset);
    // Serialize message field [product_id]
    bufferOffset = _serializer.uint16(obj.product_id, buffer, bufferOffset);
    // Serialize message field [uid]
    bufferOffset = _serializer.uint64(obj.uid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionResponse
    let len;
    let data = new VersionResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_mission_float]
    data.cap_mission_float = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_param_float]
    data.cap_param_float = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_mission_int]
    data.cap_mission_int = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_command_int]
    data.cap_command_int = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_param_union]
    data.cap_param_union = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_ftp]
    data.cap_ftp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_set_attitude]
    data.cap_set_attitude = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_set_position_local]
    data.cap_set_position_local = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_set_position_global]
    data.cap_set_position_global = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_terrain]
    data.cap_terrain = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cap_set_actuator]
    data.cap_set_actuator = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [flight_sw]
    data.flight_sw = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [middleware]
    data.middleware = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [os_sw]
    data.os_sw = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [board]
    data.board = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flight_custom]
    data.flight_custom = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [middleware_custom]
    data.middleware_custom = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [os_custom]
    data.os_custom = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vendor_id]
    data.vendor_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [product_id]
    data.product_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uid]
    data.uid = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.flight_custom.length;
    length += object.middleware_custom.length;
    length += object.os_custom.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autopilot_bridge/VersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3a54d10b293524b11c9bf9aa69a0565';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    bool cap_mission_float
    bool cap_param_float
    bool cap_mission_int
    bool cap_command_int
    bool cap_param_union
    bool cap_ftp
    bool cap_set_attitude
    bool cap_set_position_local
    bool cap_set_position_global
    bool cap_terrain
    bool cap_set_actuator
    uint32 flight_sw
    uint32 middleware
    uint32 os_sw
    uint32 board
    string flight_custom
    string middleware_custom
    string os_custom
    uint16 vendor_id
    uint16 product_id
    uint64 uid
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.cap_mission_float !== undefined) {
      resolved.cap_mission_float = msg.cap_mission_float;
    }
    else {
      resolved.cap_mission_float = false
    }

    if (msg.cap_param_float !== undefined) {
      resolved.cap_param_float = msg.cap_param_float;
    }
    else {
      resolved.cap_param_float = false
    }

    if (msg.cap_mission_int !== undefined) {
      resolved.cap_mission_int = msg.cap_mission_int;
    }
    else {
      resolved.cap_mission_int = false
    }

    if (msg.cap_command_int !== undefined) {
      resolved.cap_command_int = msg.cap_command_int;
    }
    else {
      resolved.cap_command_int = false
    }

    if (msg.cap_param_union !== undefined) {
      resolved.cap_param_union = msg.cap_param_union;
    }
    else {
      resolved.cap_param_union = false
    }

    if (msg.cap_ftp !== undefined) {
      resolved.cap_ftp = msg.cap_ftp;
    }
    else {
      resolved.cap_ftp = false
    }

    if (msg.cap_set_attitude !== undefined) {
      resolved.cap_set_attitude = msg.cap_set_attitude;
    }
    else {
      resolved.cap_set_attitude = false
    }

    if (msg.cap_set_position_local !== undefined) {
      resolved.cap_set_position_local = msg.cap_set_position_local;
    }
    else {
      resolved.cap_set_position_local = false
    }

    if (msg.cap_set_position_global !== undefined) {
      resolved.cap_set_position_global = msg.cap_set_position_global;
    }
    else {
      resolved.cap_set_position_global = false
    }

    if (msg.cap_terrain !== undefined) {
      resolved.cap_terrain = msg.cap_terrain;
    }
    else {
      resolved.cap_terrain = false
    }

    if (msg.cap_set_actuator !== undefined) {
      resolved.cap_set_actuator = msg.cap_set_actuator;
    }
    else {
      resolved.cap_set_actuator = false
    }

    if (msg.flight_sw !== undefined) {
      resolved.flight_sw = msg.flight_sw;
    }
    else {
      resolved.flight_sw = 0
    }

    if (msg.middleware !== undefined) {
      resolved.middleware = msg.middleware;
    }
    else {
      resolved.middleware = 0
    }

    if (msg.os_sw !== undefined) {
      resolved.os_sw = msg.os_sw;
    }
    else {
      resolved.os_sw = 0
    }

    if (msg.board !== undefined) {
      resolved.board = msg.board;
    }
    else {
      resolved.board = 0
    }

    if (msg.flight_custom !== undefined) {
      resolved.flight_custom = msg.flight_custom;
    }
    else {
      resolved.flight_custom = ''
    }

    if (msg.middleware_custom !== undefined) {
      resolved.middleware_custom = msg.middleware_custom;
    }
    else {
      resolved.middleware_custom = ''
    }

    if (msg.os_custom !== undefined) {
      resolved.os_custom = msg.os_custom;
    }
    else {
      resolved.os_custom = ''
    }

    if (msg.vendor_id !== undefined) {
      resolved.vendor_id = msg.vendor_id;
    }
    else {
      resolved.vendor_id = 0
    }

    if (msg.product_id !== undefined) {
      resolved.product_id = msg.product_id;
    }
    else {
      resolved.product_id = 0
    }

    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: VersionRequest,
  Response: VersionResponse,
  md5sum() { return 'd45d1d0a68288be9b762029a29740e01'; },
  datatype() { return 'autopilot_bridge/Version'; }
};
