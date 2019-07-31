#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def writer():
    pub = rospy.Publisher('name', String, queue_size=10)
    rospy.init_node('send_name', anonymous=True)

    while not rospy.is_shutdown():
        str = raw_input('Enter your name buddy : ') #use raw_input in python 2.7 it won't evaluate the input
        rospy.loginfo(str)
        pub.publish(str)


if __name__ == '__main__':
    try:
        writer()
    except rospy.ROSInterruptException:
        pass
