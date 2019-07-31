#!/usr/bin/env python

import rospy as rp
#import time
from sensor_msgs.msg import Image
import cv2 as cv
from cv_bridge import CvBridge, CvBridgeError

def subscriber_cb(img_data):
    data = bridge.imgmsg_to_cv2(img_data, "bgr8")
    #print(img_data.data)
    edge = cv.Canny(data,100,200)
    cv.imshow('Edge of the live feed', edge)
    k = cv.waitKey(1) & 0xFF
    if k == ord('q'):
        exit()

def Image_subscriber():

    rp.init_node('Image_data_subscriber', anonymous = True)
    rp.Subscriber('Image_data', Image, subscriber_cb)

    rp.spin()
    #cv.destroyAllWindows()

if __name__ == '__main__':
    try:
        bridge = CvBridge()
        Image_subscriber()
    except rp.ROSInterruptException:
        cv.destroyAllWindows()
        pass
