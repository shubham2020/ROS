#!/usr/bin/env python

import rospy
from sine_wave.srv import MultTwoFloats as mtf

def service_callback(req):
    result = req.a*req.b
    print('Multiplication complete returning the result')
    return (result) #notice the response style which was earlier MultTwoFloatsResponse(result)

def service_servers():
    rospy.init_node('Multipy_floats', anonymous=True)
    serv = rospy.Service('multiplication', mtf, service_callback)

    print('ready to multiply!!!')
    rospy.spin()

if __name__ == '__main__':
    service_servers()
