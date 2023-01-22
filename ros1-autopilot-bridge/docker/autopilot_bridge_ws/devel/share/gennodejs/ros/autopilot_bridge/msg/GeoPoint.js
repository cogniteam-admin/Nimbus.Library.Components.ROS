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

class GeoPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.rel_alt = null;
      this.using_alt = null;
      this.using_rel_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('rel_alt')) {
        this.rel_alt = initObj.rel_alt
      }
      else {
        this.rel_alt = 0.0;
      }
      if (initObj.hasOwnProperty('using_alt')) {
        this.using_alt = initObj.using_alt
      }
      else {
        this.using_alt = false;
      }
      if (initObj.hasOwnProperty('using_rel_alt')) {
        this.using_rel_alt = initObj.using_rel_alt
      }
      else {
        this.using_rel_alt = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeoPoint
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [rel_alt]
    bufferOffset = _serializer.float64(obj.rel_alt, buffer, bufferOffset);
    // Serialize message field [using_alt]
    bufferOffset = _serializer.bool(obj.using_alt, buffer, bufferOffset);
    // Serialize message field [using_rel_alt]
    bufferOffset = _serializer.bool(obj.using_rel_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeoPoint
    let len;
    let data = new GeoPoint(null);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_alt]
    data.rel_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [using_alt]
    data.using_alt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [using_rel_alt]
    data.using_rel_alt = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/GeoPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c121d48ffba7006a7ab486f309ebbbb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # WGS84 latitude, longitude, and MSL altitude
    float64 lat
    float64 lon
    float64 alt
    
    # Relative altitude (custom definable, but generally set w.r.t. some home point)
    float64 rel_alt
    
    # Flag field for which altitudes are valid
    bool using_alt
    bool using_rel_alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeoPoint(null);
    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.rel_alt !== undefined) {
      resolved.rel_alt = msg.rel_alt;
    }
    else {
      resolved.rel_alt = 0.0
    }

    if (msg.using_alt !== undefined) {
      resolved.using_alt = msg.using_alt;
    }
    else {
      resolved.using_alt = false
    }

    if (msg.using_rel_alt !== undefined) {
      resolved.using_rel_alt = msg.using_rel_alt;
    }
    else {
      resolved.using_rel_alt = false
    }

    return resolved;
    }
};

module.exports = GeoPoint;
