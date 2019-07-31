#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import time

def callback(data):
    print('Hello %s ,your call time is %s '%(data.data, time.ctime(rospy.get_time())))

def read():
    rospy.init_node('hello_to_all', anonymous=True)
    rospy.Subscriber('name', String, callback)
    rospy.spin()

if __name__ == '__main__':
    read()
