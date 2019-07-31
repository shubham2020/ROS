;; Auto-generated. Do not edit!


(when (boundp 'sine_wave::MultTwoFloats)
  (if (not (find-package "SINE_WAVE"))
    (make-package "SINE_WAVE"))
  (shadow 'MultTwoFloats (find-package "SINE_WAVE")))
(unless (find-package "SINE_WAVE::MULTTWOFLOATS")
  (make-package "SINE_WAVE::MULTTWOFLOATS"))
(unless (find-package "SINE_WAVE::MULTTWOFLOATSREQUEST")
  (make-package "SINE_WAVE::MULTTWOFLOATSREQUEST"))
(unless (find-package "SINE_WAVE::MULTTWOFLOATSRESPONSE")
  (make-package "SINE_WAVE::MULTTWOFLOATSRESPONSE"))

(in-package "ROS")





(defclass sine_wave::MultTwoFloatsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod sine_wave::MultTwoFloatsRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sine_wave::MultTwoFloatsResponse
  :super ros::object
  :slots (_result ))

(defmethod sine_wave::MultTwoFloatsResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _result
       (sys::poke _result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _result
     (setq _result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sine_wave::MultTwoFloats
  :super ros::object
  :slots ())

(setf (get sine_wave::MultTwoFloats :md5sum-) "75900da305351b83210613bd5136a6e2")
(setf (get sine_wave::MultTwoFloats :datatype-) "sine_wave/MultTwoFloats")
(setf (get sine_wave::MultTwoFloats :request) sine_wave::MultTwoFloatsRequest)
(setf (get sine_wave::MultTwoFloats :response) sine_wave::MultTwoFloatsResponse)

(defmethod sine_wave::MultTwoFloatsRequest
  (:response () (instance sine_wave::MultTwoFloatsResponse :init)))

(setf (get sine_wave::MultTwoFloatsRequest :md5sum-) "75900da305351b83210613bd5136a6e2")
(setf (get sine_wave::MultTwoFloatsRequest :datatype-) "sine_wave/MultTwoFloatsRequest")
(setf (get sine_wave::MultTwoFloatsRequest :definition-)
      "float32 a
float32 b
---
float32 result

")

(setf (get sine_wave::MultTwoFloatsResponse :md5sum-) "75900da305351b83210613bd5136a6e2")
(setf (get sine_wave::MultTwoFloatsResponse :datatype-) "sine_wave/MultTwoFloatsResponse")
(setf (get sine_wave::MultTwoFloatsResponse :definition-)
      "float32 a
float32 b
---
float32 result

")



(provide :sine_wave/MultTwoFloats "75900da305351b83210613bd5136a6e2")


