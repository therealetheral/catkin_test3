;; Auto-generated. Do not edit!


(when (boundp 'simple_arm::GoToPosition)
  (if (not (find-package "SIMPLE_ARM"))
    (make-package "SIMPLE_ARM"))
  (shadow 'GoToPosition (find-package "SIMPLE_ARM")))
(unless (find-package "SIMPLE_ARM::GOTOPOSITION")
  (make-package "SIMPLE_ARM::GOTOPOSITION"))
(unless (find-package "SIMPLE_ARM::GOTOPOSITIONREQUEST")
  (make-package "SIMPLE_ARM::GOTOPOSITIONREQUEST"))
(unless (find-package "SIMPLE_ARM::GOTOPOSITIONRESPONSE")
  (make-package "SIMPLE_ARM::GOTOPOSITIONRESPONSE"))

(in-package "ROS")





(defclass simple_arm::GoToPositionRequest
  :super ros::object
  :slots (_joint1 _joint2 ))

(defmethod simple_arm::GoToPositionRequest
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:serialization-length
   ()
   (+
    ;; float64 _joint1
    8
    ;; float64 _joint2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint1
     (setq _joint1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint2
     (setq _joint2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass simple_arm::GoToPositionResponse
  :super ros::object
  :slots (_msg_feedback ))

(defmethod simple_arm::GoToPositionResponse
  (:init
   (&key
    ((:msg_feedback __msg_feedback) "")
    )
   (send-super :init)
   (setq _msg_feedback (string __msg_feedback))
   self)
  (:msg_feedback
   (&optional __msg_feedback)
   (if __msg_feedback (setq _msg_feedback __msg_feedback)) _msg_feedback)
  (:serialization-length
   ()
   (+
    ;; string _msg_feedback
    4 (length _msg_feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg_feedback
       (write-long (length _msg_feedback) s) (princ _msg_feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg_feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass simple_arm::GoToPosition
  :super ros::object
  :slots ())

(setf (get simple_arm::GoToPosition :md5sum-) "824210fcf22bd4179a0ca5a2327ca3cc")
(setf (get simple_arm::GoToPosition :datatype-) "simple_arm/GoToPosition")
(setf (get simple_arm::GoToPosition :request) simple_arm::GoToPositionRequest)
(setf (get simple_arm::GoToPosition :response) simple_arm::GoToPositionResponse)

(defmethod simple_arm::GoToPositionRequest
  (:response () (instance simple_arm::GoToPositionResponse :init)))

(setf (get simple_arm::GoToPositionRequest :md5sum-) "824210fcf22bd4179a0ca5a2327ca3cc")
(setf (get simple_arm::GoToPositionRequest :datatype-) "simple_arm/GoToPositionRequest")
(setf (get simple_arm::GoToPositionRequest :definition-)
      "float64 joint1
float64 joint2
---
string msg_feedback

")

(setf (get simple_arm::GoToPositionResponse :md5sum-) "824210fcf22bd4179a0ca5a2327ca3cc")
(setf (get simple_arm::GoToPositionResponse :datatype-) "simple_arm/GoToPositionResponse")
(setf (get simple_arm::GoToPositionResponse :definition-)
      "float64 joint1
float64 joint2
---
string msg_feedback

")



(provide :simple_arm/GoToPosition "824210fcf22bd4179a0ca5a2327ca3cc")


