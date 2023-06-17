// Auto-generated. Do not edit!

// (in-package flir_lepton_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThermalAlert = require('./ThermalAlert.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThermalAlertVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.alerts = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('alerts')) {
        this.alerts = initObj.alerts
      }
      else {
        this.alerts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThermalAlertVector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [alerts]
    // Serialize the length for message field [alerts]
    bufferOffset = _serializer.uint32(obj.alerts.length, buffer, bufferOffset);
    obj.alerts.forEach((val) => {
      bufferOffset = ThermalAlert.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThermalAlertVector
    let len;
    let data = new ThermalAlertVector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [alerts]
    // Deserialize array length for message field [alerts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.alerts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.alerts[i] = ThermalAlert.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.alerts.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flir_lepton_msgs/ThermalAlertVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbc179673686a6053173bda4dbac0990';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ThermalAlert[] alerts
    
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
    
    ================================================================================
    MSG: flir_lepton_msgs/ThermalAlert
    GeneralAlertInfo info
    
    float32 temperature
    
    ================================================================================
    MSG: flir_lepton_msgs/GeneralAlertInfo
    float64 yaw
    float64 pitch
    float32 probability
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThermalAlertVector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.alerts !== undefined) {
      resolved.alerts = new Array(msg.alerts.length);
      for (let i = 0; i < resolved.alerts.length; ++i) {
        resolved.alerts[i] = ThermalAlert.Resolve(msg.alerts[i]);
      }
    }
    else {
      resolved.alerts = []
    }

    return resolved;
    }
};

module.exports = ThermalAlertVector;
