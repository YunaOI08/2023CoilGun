// Auto-generated. Do not edit!

// (in-package flir_lepton_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CandidateRoiMsg = require('./CandidateRoiMsg.js');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class CandidateRoisVectorMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.candidateRois = null;
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('candidateRois')) {
        this.candidateRois = initObj.candidateRois
      }
      else {
        this.candidateRois = [];
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CandidateRoisVectorMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [candidateRois]
    // Serialize the length for message field [candidateRois]
    bufferOffset = _serializer.uint32(obj.candidateRois.length, buffer, bufferOffset);
    obj.candidateRois.forEach((val) => {
      bufferOffset = CandidateRoiMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CandidateRoisVectorMsg
    let len;
    let data = new CandidateRoisVectorMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [candidateRois]
    // Deserialize array length for message field [candidateRois]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.candidateRois = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.candidateRois[i] = CandidateRoiMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.candidateRois.forEach((val) => {
      length += CandidateRoiMsg.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flir_lepton_msgs/CandidateRoisVectorMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d84a819fbd4af1f20582eeceb6a3e56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    CandidateRoiMsg[] candidateRois
    
    sensor_msgs/Image image
    
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
    MSG: flir_lepton_msgs/CandidateRoiMsg
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
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CandidateRoisVectorMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.candidateRois !== undefined) {
      resolved.candidateRois = new Array(msg.candidateRois.length);
      for (let i = 0; i < resolved.candidateRois.length; ++i) {
        resolved.candidateRois[i] = CandidateRoiMsg.Resolve(msg.candidateRois[i]);
      }
    }
    else {
      resolved.candidateRois = []
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = CandidateRoisVectorMsg;