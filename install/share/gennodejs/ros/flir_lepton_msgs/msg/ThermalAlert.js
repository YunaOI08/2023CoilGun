// Auto-generated. Do not edit!

// (in-package flir_lepton_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeneralAlertInfo = require('./GeneralAlertInfo.js');

//-----------------------------------------------------------

class ThermalAlert {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new GeneralAlertInfo();
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThermalAlert
    // Serialize message field [info]
    bufferOffset = GeneralAlertInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThermalAlert
    let len;
    let data = new ThermalAlert(null);
    // Deserialize message field [info]
    data.info = GeneralAlertInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flir_lepton_msgs/ThermalAlert';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18245e1dc2e3ca98fa29f3888f3602b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ThermalAlert(null);
    if (msg.info !== undefined) {
      resolved.info = GeneralAlertInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new GeneralAlertInfo()
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    return resolved;
    }
};

module.exports = ThermalAlert;
