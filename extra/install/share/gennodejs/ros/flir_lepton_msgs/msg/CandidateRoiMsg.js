// Auto-generated. Do not edit!

// (in-package flir_lepton_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CandidateRoiMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.keypointX = null;
      this.keypointY = null;
      this.verticesX = null;
      this.verticesY = null;
      this.outlineX = null;
      this.outlineY = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('keypointX')) {
        this.keypointX = initObj.keypointX
      }
      else {
        this.keypointX = 0.0;
      }
      if (initObj.hasOwnProperty('keypointY')) {
        this.keypointY = initObj.keypointY
      }
      else {
        this.keypointY = 0.0;
      }
      if (initObj.hasOwnProperty('verticesX')) {
        this.verticesX = initObj.verticesX
      }
      else {
        this.verticesX = [];
      }
      if (initObj.hasOwnProperty('verticesY')) {
        this.verticesY = initObj.verticesY
      }
      else {
        this.verticesY = [];
      }
      if (initObj.hasOwnProperty('outlineX')) {
        this.outlineX = initObj.outlineX
      }
      else {
        this.outlineX = [];
      }
      if (initObj.hasOwnProperty('outlineY')) {
        this.outlineY = initObj.outlineY
      }
      else {
        this.outlineY = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CandidateRoiMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [keypointX]
    bufferOffset = _serializer.float32(obj.keypointX, buffer, bufferOffset);
    // Serialize message field [keypointY]
    bufferOffset = _serializer.float32(obj.keypointY, buffer, bufferOffset);
    // Serialize message field [verticesX]
    bufferOffset = _arraySerializer.float32(obj.verticesX, buffer, bufferOffset, null);
    // Serialize message field [verticesY]
    bufferOffset = _arraySerializer.float32(obj.verticesY, buffer, bufferOffset, null);
    // Serialize message field [outlineX]
    bufferOffset = _arraySerializer.float32(obj.outlineX, buffer, bufferOffset, null);
    // Serialize message field [outlineY]
    bufferOffset = _arraySerializer.float32(obj.outlineY, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CandidateRoiMsg
    let len;
    let data = new CandidateRoiMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [keypointX]
    data.keypointX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keypointY]
    data.keypointY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [verticesX]
    data.verticesX = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [verticesY]
    data.verticesY = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [outlineX]
    data.outlineX = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [outlineY]
    data.outlineY = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.verticesX.length;
    length += 4 * object.verticesY.length;
    length += 4 * object.outlineX.length;
    length += 4 * object.outlineY.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flir_lepton_msgs/CandidateRoiMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb941ceeae2a537fa35424da91cbf0b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # keypoint.pt.x
    float32 keypointX
    
    # keypoint.pt.y
    float32 keypointY
    
    # bounding box's vertices X coordinate
    float32[] verticesX
    
    # bounding box's vertices Y coordinate
    float32[] verticesY
    
    # blob's outline points X coordinate
    float32[] outlineX
    
    # blob's outline points X coordinate
    float32[] outlineY
    
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
    const resolved = new CandidateRoiMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.keypointX !== undefined) {
      resolved.keypointX = msg.keypointX;
    }
    else {
      resolved.keypointX = 0.0
    }

    if (msg.keypointY !== undefined) {
      resolved.keypointY = msg.keypointY;
    }
    else {
      resolved.keypointY = 0.0
    }

    if (msg.verticesX !== undefined) {
      resolved.verticesX = msg.verticesX;
    }
    else {
      resolved.verticesX = []
    }

    if (msg.verticesY !== undefined) {
      resolved.verticesY = msg.verticesY;
    }
    else {
      resolved.verticesY = []
    }

    if (msg.outlineX !== undefined) {
      resolved.outlineX = msg.outlineX;
    }
    else {
      resolved.outlineX = []
    }

    if (msg.outlineY !== undefined) {
      resolved.outlineY = msg.outlineY;
    }
    else {
      resolved.outlineY = []
    }

    return resolved;
    }
};

module.exports = CandidateRoiMsg;
