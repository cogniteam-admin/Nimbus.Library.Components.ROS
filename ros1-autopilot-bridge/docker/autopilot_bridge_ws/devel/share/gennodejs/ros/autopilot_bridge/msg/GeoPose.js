// Auto-generated. Do not edit!

// (in-package autopilot_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoPoint = require('./GeoPoint.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GeoPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new GeoPoint();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeoPose
    // Serialize message field [position]
    bufferOffset = GeoPoint.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeoPose
    let len;
    let data = new GeoPose(null);
    // Deserialize message field [position]
    data.position = GeoPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/GeoPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a73a1efca4f7df92e709875c74f317f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GeoPose(null);
    if (msg.position !== undefined) {
      resolved.position = GeoPoint.Resolve(msg.position)
    }
    else {
      resolved.position = new GeoPoint()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = GeoPose;
