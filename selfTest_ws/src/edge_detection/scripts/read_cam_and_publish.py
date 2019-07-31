#!/usr/bin/env python

import rospy as rp
import time
from sensor_msgs.msg import Image
import cv2 as cv
from cv_bridge import CvBridge, CvBridgeError

def image_publisher():
    pub = rp.Publisher('Image_data', Image, queue_size = 10)
    rp.init_node('Image_data_publisher', anonymous = True)
    rate = rp.Rate(30)

    bridge = CvBridge()

    # Create a new Image object and fill it with the acquired data
    #img_data = Image()

    cap = cv.VideoCapture('http://lenovop2:@exergy@172.16.181.91:4747/mjpegfeed?960x720')
    if not cap.isOpened():
        print('Cannot open camera')
        exit()

    #img_data.header.seq = 0

    while True:
        # Capture frame-by-frame
        ret, frame = cap.read()
        # if frame is read correctly ret is True
        if not ret:
            print("Can't receive frame (stream end?). Exiting ...")
            break

        gray = cv.cvtColor(frame, 1)#cv.COLOR_BGR2GRAY)
        img_data = bridge.cv2_to_imgmsg(gray, "bgr8")

        pub.publish(img_data)
        # Print log message if all went well.
        rp.loginfo("All went well. Publishing topic ")
        rate.sleep()

if __name__ == '__main__':
    try:
        image_publisher()
    except rp.ROSInterruptException:
        cap.release()
        pass
