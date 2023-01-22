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

class Rallypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.break_alt = null;
      this.land_dir = null;
      this.flags = null;
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
      if (initObj.hasOwnProperty('break_alt')) {
        this.break_alt = initObj.break_alt
      }
      else {
        this.break_alt = 0.0;
      }
      if (initObj.hasOwnProperty('land_dir')) {
        this.land_dir = initObj.land_dir
      }
      else {
        this.land_dir = 0.0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rallypoint
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [break_alt]
    bufferOffset = _serializer.float64(obj.break_alt, buffer, bufferOffset);
    // Serialize message field [land_dir]
    bufferOffset = _serializer.float64(obj.land_dir, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rallypoint
    let len;
    let data = new Rallypoint(null);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [break_alt]
    data.break_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [land_dir]
    data.land_dir = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/Rallypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18ae3a5294644e7830f081afbc682a08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 lat
    float64 lon
    float64 alt
    float64 break_alt
    float64 land_dir
    uint8 flags
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rallypoint(null);
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

    if (msg.break_alt !== undefined) {
      resolved.break_alt = msg.break_alt;
    }
    else {
      resolved.break_alt = 0.0
    }

    if (msg.land_dir !== undefined) {
      resolved.land_dir = msg.land_dir;
    }
    else {
      resolved.land_dir = 0.0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    return resolved;
    }
};

module.exports = Rallypoint;
