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

class WeatherData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.baro_millibars = null;
      this.temp_C = null;
      this.wind_mph = null;
      this.wind_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('baro_millibars')) {
        this.baro_millibars = initObj.baro_millibars
      }
      else {
        this.baro_millibars = 0.0;
      }
      if (initObj.hasOwnProperty('temp_C')) {
        this.temp_C = initObj.temp_C
      }
      else {
        this.temp_C = 0.0;
      }
      if (initObj.hasOwnProperty('wind_mph')) {
        this.wind_mph = initObj.wind_mph
      }
      else {
        this.wind_mph = 0.0;
      }
      if (initObj.hasOwnProperty('wind_direction')) {
        this.wind_direction = initObj.wind_direction
      }
      else {
        this.wind_direction = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WeatherData
    // Serialize message field [baro_millibars]
    bufferOffset = _serializer.float32(obj.baro_millibars, buffer, bufferOffset);
    // Serialize message field [temp_C]
    bufferOffset = _serializer.float32(obj.temp_C, buffer, bufferOffset);
    // Serialize message field [wind_mph]
    bufferOffset = _serializer.float32(obj.wind_mph, buffer, bufferOffset);
    // Serialize message field [wind_direction]
    bufferOffset = _serializer.float32(obj.wind_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WeatherData
    let len;
    let data = new WeatherData(null);
    // Deserialize message field [baro_millibars]
    data.baro_millibars = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temp_C]
    data.temp_C = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wind_mph]
    data.wind_mph = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wind_direction]
    data.wind_direction = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/WeatherData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad6ecb730008621b85e84342a94f123f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 baro_millibars
    float32 temp_C
    float32 wind_mph
    float32 wind_direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WeatherData(null);
    if (msg.baro_millibars !== undefined) {
      resolved.baro_millibars = msg.baro_millibars;
    }
    else {
      resolved.baro_millibars = 0.0
    }

    if (msg.temp_C !== undefined) {
      resolved.temp_C = msg.temp_C;
    }
    else {
      resolved.temp_C = 0.0
    }

    if (msg.wind_mph !== undefined) {
      resolved.wind_mph = msg.wind_mph;
    }
    else {
      resolved.wind_mph = 0.0
    }

    if (msg.wind_direction !== undefined) {
      resolved.wind_direction = msg.wind_direction;
    }
    else {
      resolved.wind_direction = 0.0
    }

    return resolved;
    }
};

module.exports = WeatherData;
