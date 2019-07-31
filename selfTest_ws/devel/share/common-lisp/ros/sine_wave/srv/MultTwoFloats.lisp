; Auto-generated. Do not edit!


(cl:in-package sine_wave-srv)


;//! \htmlinclude MultTwoFloats-request.msg.html

(cl:defclass <MultTwoFloats-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass MultTwoFloats-request (<MultTwoFloats-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultTwoFloats-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultTwoFloats-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sine_wave-srv:<MultTwoFloats-request> is deprecated: use sine_wave-srv:MultTwoFloats-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <MultTwoFloats-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sine_wave-srv:a-val is deprecated.  Use sine_wave-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <MultTwoFloats-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sine_wave-srv:b-val is deprecated.  Use sine_wave-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultTwoFloats-request>) ostream)
  "Serializes a message object of type '<MultTwoFloats-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultTwoFloats-request>) istream)
  "Deserializes a message object of type '<MultTwoFloats-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultTwoFloats-request>)))
  "Returns string type for a service object of type '<MultTwoFloats-request>"
  "sine_wave/MultTwoFloatsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultTwoFloats-request)))
  "Returns string type for a service object of type 'MultTwoFloats-request"
  "sine_wave/MultTwoFloatsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultTwoFloats-request>)))
  "Returns md5sum for a message object of type '<MultTwoFloats-request>"
  "75900da305351b83210613bd5136a6e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultTwoFloats-request)))
  "Returns md5sum for a message object of type 'MultTwoFloats-request"
  "75900da305351b83210613bd5136a6e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultTwoFloats-request>)))
  "Returns full string definition for message of type '<MultTwoFloats-request>"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultTwoFloats-request)))
  "Returns full string definition for message of type 'MultTwoFloats-request"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultTwoFloats-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultTwoFloats-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MultTwoFloats-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude MultTwoFloats-response.msg.html

(cl:defclass <MultTwoFloats-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass MultTwoFloats-response (<MultTwoFloats-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultTwoFloats-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultTwoFloats-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sine_wave-srv:<MultTwoFloats-response> is deprecated: use sine_wave-srv:MultTwoFloats-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MultTwoFloats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sine_wave-srv:result-val is deprecated.  Use sine_wave-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultTwoFloats-response>) ostream)
  "Serializes a message object of type '<MultTwoFloats-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultTwoFloats-response>) istream)
  "Deserializes a message object of type '<MultTwoFloats-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultTwoFloats-response>)))
  "Returns string type for a service object of type '<MultTwoFloats-response>"
  "sine_wave/MultTwoFloatsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultTwoFloats-response)))
  "Returns string type for a service object of type 'MultTwoFloats-response"
  "sine_wave/MultTwoFloatsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultTwoFloats-response>)))
  "Returns md5sum for a message object of type '<MultTwoFloats-response>"
  "75900da305351b83210613bd5136a6e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultTwoFloats-response)))
  "Returns md5sum for a message object of type 'MultTwoFloats-response"
  "75900da305351b83210613bd5136a6e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultTwoFloats-response>)))
  "Returns full string definition for message of type '<MultTwoFloats-response>"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultTwoFloats-response)))
  "Returns full string definition for message of type 'MultTwoFloats-response"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultTwoFloats-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultTwoFloats-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MultTwoFloats-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MultTwoFloats)))
  'MultTwoFloats-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MultTwoFloats)))
  'MultTwoFloats-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultTwoFloats)))
  "Returns string type for a service object of type '<MultTwoFloats>"
  "sine_wave/MultTwoFloats")