#!/usr/bin/env python

import sys
import rospy
from sine_wave.srv import MultTwoFloats as mtf

def service_client(x, y):
    rospy.wait_for_service('multiplication')
    try:
        proxy = rospy.ServiceProxy('multiplication',mtf)
        resp = proxy(x,y)
        return resp.result
    except rospy.ServiceException, e:
        print('Service call failed : %s'%e)

def usage():
    return '%s [x, y]'%sys.argv[0] #this is to print the script name along with the input format to scree if wrong input is enterd

if __name__ == '__main__':
    if len(sys.argv) == 3:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
    else:
        print usage()
        sys.exit(1) #1 does not hold any of serious significance here just 0 means successful execution

    print('Requesting %s * %s' %(x,y))
    print('%s * %s = %s'%(x,y,service_client(x,y)))
