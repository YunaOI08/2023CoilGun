// Auto-generated. Do not edit!

// (in-package lepton_msg_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Lepton {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = [];
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lepton
    // Serialize message field [msg]
    bufferOffset = _arraySerializer.uint8(obj.msg, buffer, bufferOffset, null);
    // Serialize message field [size]
    bufferOffset = _serializer.uint16(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lepton
    let len;
    let data = new Lepton(null);
    // Deserialize message field [msg]
    data.msg = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [size]
    data.size = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lepton_msg_pkg/Lepton';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2356878e9e58b7d986678eb88cca055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] msg
    uint16 size
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lepton(null);
    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = []
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = Lepton;
