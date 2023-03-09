// Auto-generated. Do not edit!

// (in-package simple_arm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoToPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToPositionRequest
    // Serialize message field [joint1]
    bufferOffset = _serializer.float64(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float64(obj.joint2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToPositionRequest
    let len;
    let data = new GoToPositionRequest(null);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_arm/GoToPositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76946edcbf65b277e94778bdd4d63aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 joint1
    float64 joint2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToPositionRequest(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    return resolved;
    }
};

class GoToPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_feedback')) {
        this.msg_feedback = initObj.msg_feedback
      }
      else {
        this.msg_feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToPositionResponse
    // Serialize message field [msg_feedback]
    bufferOffset = _serializer.string(obj.msg_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToPositionResponse
    let len;
    let data = new GoToPositionResponse(null);
    // Deserialize message field [msg_feedback]
    data.msg_feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg_feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simple_arm/GoToPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2897a4bc4d7ca330e430870cfdee7314';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg_feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToPositionResponse(null);
    if (msg.msg_feedback !== undefined) {
      resolved.msg_feedback = msg.msg_feedback;
    }
    else {
      resolved.msg_feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GoToPositionRequest,
  Response: GoToPositionResponse,
  md5sum() { return '824210fcf22bd4179a0ca5a2327ca3cc'; },
  datatype() { return 'simple_arm/GoToPosition'; }
};
