// Auto-generated. Do not edit!

// (in-package autopilot_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoPose = require('./GeoPose.js');

//-----------------------------------------------------------

class GeoPoseWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new GeoPose();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeoPoseWithCovariance
    // Serialize message field [pose]
    bufferOffset = GeoPose.serialize(obj.pose, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeoPoseWithCovariance
    let len;
    let data = new GeoPoseWithCovariance(null);
    // Deserialize message field [pose]
    data.pose = GeoPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 354;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/GeoPoseWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49607a12d5ec103bbc7dc81cc88d8763';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Pose using lat/lon/alt in place of x/y/z plus two altitude fields
    GeoPose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: autopilot_bridge/GeoPose
    # 3-D point using lat/lon/alt, with two altitude options
    GeoPoint position
    
    # Quaternion orientation
    geometry_msgs/Quaternion orientation
    
    ================================================================================
    MSG: autopilot_bridge/GeoPoint
    # WGS84 latitude, longitude, and MSL altitude
    float64 lat
    float64 lon
    float64 alt
    
    # Relative altitude (custom definable, but generally set w.r.t. some home point)
    float64 rel_alt
    
    # Flag field for which altitudes are valid
    bool using_alt
    bool using_rel_alt
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeoPoseWithCovariance(null);
    if (msg.pose !== undefined) {
      resolved.pose = GeoPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new GeoPose()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = GeoPoseWithCovariance;
