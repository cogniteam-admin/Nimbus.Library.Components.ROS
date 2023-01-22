// Auto-generated. Do not edit!

// (in-package autopilot_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.armed = null;
      this.ahrs_ok = null;
      this.alt_rel = null;
      this.as_ok = null;
      this.as_read = null;
      this.fence_status = null;
      this.gps_ok = null;
      this.gps_sats = null;
      this.gps_eph = null;
      this.ins_ok = null;
      this.mag_ok = null;
      this.mis_cur = null;
      this.pwr_ok = null;
      this.pwr_batt_rem = null;
      this.pwr_batt_vcc = null;
      this.pwr_batt_cur = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('ahrs_ok')) {
        this.ahrs_ok = initObj.ahrs_ok
      }
      else {
        this.ahrs_ok = false;
      }
      if (initObj.hasOwnProperty('alt_rel')) {
        this.alt_rel = initObj.alt_rel
      }
      else {
        this.alt_rel = 0;
      }
      if (initObj.hasOwnProperty('as_ok')) {
        this.as_ok = initObj.as_ok
      }
      else {
        this.as_ok = false;
      }
      if (initObj.hasOwnProperty('as_read')) {
        this.as_read = initObj.as_read
      }
      else {
        this.as_read = 0.0;
      }
      if (initObj.hasOwnProperty('fence_status')) {
        this.fence_status = initObj.fence_status
      }
      else {
        this.fence_status = 0;
      }
      if (initObj.hasOwnProperty('gps_ok')) {
        this.gps_ok = initObj.gps_ok
      }
      else {
        this.gps_ok = false;
      }
      if (initObj.hasOwnProperty('gps_sats')) {
        this.gps_sats = initObj.gps_sats
      }
      else {
        this.gps_sats = 0;
      }
      if (initObj.hasOwnProperty('gps_eph')) {
        this.gps_eph = initObj.gps_eph
      }
      else {
        this.gps_eph = 0;
      }
      if (initObj.hasOwnProperty('ins_ok')) {
        this.ins_ok = initObj.ins_ok
      }
      else {
        this.ins_ok = false;
      }
      if (initObj.hasOwnProperty('mag_ok')) {
        this.mag_ok = initObj.mag_ok
      }
      else {
        this.mag_ok = false;
      }
      if (initObj.hasOwnProperty('mis_cur')) {
        this.mis_cur = initObj.mis_cur
      }
      else {
        this.mis_cur = 0;
      }
      if (initObj.hasOwnProperty('pwr_ok')) {
        this.pwr_ok = initObj.pwr_ok
      }
      else {
        this.pwr_ok = false;
      }
      if (initObj.hasOwnProperty('pwr_batt_rem')) {
        this.pwr_batt_rem = initObj.pwr_batt_rem
      }
      else {
        this.pwr_batt_rem = 0;
      }
      if (initObj.hasOwnProperty('pwr_batt_vcc')) {
        this.pwr_batt_vcc = initObj.pwr_batt_vcc
      }
      else {
        this.pwr_batt_vcc = 0;
      }
      if (initObj.hasOwnProperty('pwr_batt_cur')) {
        this.pwr_batt_cur = initObj.pwr_batt_cur
      }
      else {
        this.pwr_batt_cur = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [ahrs_ok]
    bufferOffset = _serializer.bool(obj.ahrs_ok, buffer, bufferOffset);
    // Serialize message field [alt_rel]
    bufferOffset = _serializer.int32(obj.alt_rel, buffer, bufferOffset);
    // Serialize message field [as_ok]
    bufferOffset = _serializer.bool(obj.as_ok, buffer, bufferOffset);
    // Serialize message field [as_read]
    bufferOffset = _serializer.float32(obj.as_read, buffer, bufferOffset);
    // Serialize message field [fence_status]
    bufferOffset = _serializer.uint8(obj.fence_status, buffer, bufferOffset);
    // Serialize message field [gps_ok]
    bufferOffset = _serializer.bool(obj.gps_ok, buffer, bufferOffset);
    // Serialize message field [gps_sats]
    bufferOffset = _serializer.uint8(obj.gps_sats, buffer, bufferOffset);
    // Serialize message field [gps_eph]
    bufferOffset = _serializer.uint16(obj.gps_eph, buffer, bufferOffset);
    // Serialize message field [ins_ok]
    bufferOffset = _serializer.bool(obj.ins_ok, buffer, bufferOffset);
    // Serialize message field [mag_ok]
    bufferOffset = _serializer.bool(obj.mag_ok, buffer, bufferOffset);
    // Serialize message field [mis_cur]
    bufferOffset = _serializer.uint16(obj.mis_cur, buffer, bufferOffset);
    // Serialize message field [pwr_ok]
    bufferOffset = _serializer.bool(obj.pwr_ok, buffer, bufferOffset);
    // Serialize message field [pwr_batt_rem]
    bufferOffset = _serializer.int16(obj.pwr_batt_rem, buffer, bufferOffset);
    // Serialize message field [pwr_batt_vcc]
    bufferOffset = _serializer.int16(obj.pwr_batt_vcc, buffer, bufferOffset);
    // Serialize message field [pwr_batt_cur]
    bufferOffset = _serializer.int16(obj.pwr_batt_cur, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ahrs_ok]
    data.ahrs_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [alt_rel]
    data.alt_rel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [as_ok]
    data.as_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [as_read]
    data.as_read = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fence_status]
    data.fence_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ok]
    data.gps_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_sats]
    data.gps_sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_eph]
    data.gps_eph = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ins_ok]
    data.ins_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mag_ok]
    data.mag_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mis_cur]
    data.mis_cur = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwr_ok]
    data.pwr_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwr_batt_rem]
    data.pwr_batt_rem = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pwr_batt_vcc]
    data.pwr_batt_vcc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pwr_batt_cur]
    data.pwr_batt_cur = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autopilot_bridge/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fa5b3d92700636ca78bc44bf0a7b17e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MODE_RALLY=0
    uint8 MODE_MANUAL=1
    uint8 MODE_FBWA=2
    uint8 MODE_GUIDED=3
    uint8 MODE_AUTO=4
    uint8 MODE_FBWB=5
    uint8 MODE_CIRCLE=6
    uint8 MODE_LOITER=7
    uint8 MODE_INITIALIZING=8
    uint8 MODE_UNKNOWN=15
    
    uint8 FENCE_NOT_BREACHED=0
    uint8 FENCE_BREACHED=1
    uint8 FENCE_DISABLED=2
    
    Header  header
    uint8   mode
    bool    armed
    bool    ahrs_ok
    int32   alt_rel
    bool    as_ok
    float32 as_read
    uint8   fence_status
    bool    gps_ok
    uint8   gps_sats
    uint16  gps_eph
    bool    ins_ok
    bool    mag_ok
    uint16  mis_cur
    bool    pwr_ok
    int16   pwr_batt_rem
    int16   pwr_batt_vcc
    int16   pwr_batt_cur
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.ahrs_ok !== undefined) {
      resolved.ahrs_ok = msg.ahrs_ok;
    }
    else {
      resolved.ahrs_ok = false
    }

    if (msg.alt_rel !== undefined) {
      resolved.alt_rel = msg.alt_rel;
    }
    else {
      resolved.alt_rel = 0
    }

    if (msg.as_ok !== undefined) {
      resolved.as_ok = msg.as_ok;
    }
    else {
      resolved.as_ok = false
    }

    if (msg.as_read !== undefined) {
      resolved.as_read = msg.as_read;
    }
    else {
      resolved.as_read = 0.0
    }

    if (msg.fence_status !== undefined) {
      resolved.fence_status = msg.fence_status;
    }
    else {
      resolved.fence_status = 0
    }

    if (msg.gps_ok !== undefined) {
      resolved.gps_ok = msg.gps_ok;
    }
    else {
      resolved.gps_ok = false
    }

    if (msg.gps_sats !== undefined) {
      resolved.gps_sats = msg.gps_sats;
    }
    else {
      resolved.gps_sats = 0
    }

    if (msg.gps_eph !== undefined) {
      resolved.gps_eph = msg.gps_eph;
    }
    else {
      resolved.gps_eph = 0
    }

    if (msg.ins_ok !== undefined) {
      resolved.ins_ok = msg.ins_ok;
    }
    else {
      resolved.ins_ok = false
    }

    if (msg.mag_ok !== undefined) {
      resolved.mag_ok = msg.mag_ok;
    }
    else {
      resolved.mag_ok = false
    }

    if (msg.mis_cur !== undefined) {
      resolved.mis_cur = msg.mis_cur;
    }
    else {
      resolved.mis_cur = 0
    }

    if (msg.pwr_ok !== undefined) {
      resolved.pwr_ok = msg.pwr_ok;
    }
    else {
      resolved.pwr_ok = false
    }

    if (msg.pwr_batt_rem !== undefined) {
      resolved.pwr_batt_rem = msg.pwr_batt_rem;
    }
    else {
      resolved.pwr_batt_rem = 0
    }

    if (msg.pwr_batt_vcc !== undefined) {
      resolved.pwr_batt_vcc = msg.pwr_batt_vcc;
    }
    else {
      resolved.pwr_batt_vcc = 0
    }

    if (msg.pwr_batt_cur !== undefined) {
      resolved.pwr_batt_cur = msg.pwr_batt_cur;
    }
    else {
      resolved.pwr_batt_cur = 0
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  MODE_RALLY: 0,
  MODE_MANUAL: 1,
  MODE_FBWA: 2,
  MODE_GUIDED: 3,
  MODE_AUTO: 4,
  MODE_FBWB: 5,
  MODE_CIRCLE: 6,
  MODE_LOITER: 7,
  MODE_INITIALIZING: 8,
  MODE_UNKNOWN: 15,
  FENCE_NOT_BREACHED: 0,
  FENCE_BREACHED: 1,
  FENCE_DISABLED: 2,
}

module.exports = Status;
