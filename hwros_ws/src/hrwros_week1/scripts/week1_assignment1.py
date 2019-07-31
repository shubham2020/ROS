#! /usr/bin/env python

# Assignment 1 for Week1: In this assignment you will subscribe to the topic that
# publishes sensor information. Then, you will transform the sensor reading from
# the reference frame of the sensor to compute the height of a box based on the
# illustration shown in the assignment document. Then, you will publish the box height
# on a new message type ONLY if the height of the box is more than 10cm.

# All necessary python imports go here.
import rospy
from hrwros_msgs.msg import SensorInformation

def sensor_info_callback(data, bhi_pub):
    # Compute the height of the box.
    height_box = 
    # Boxes that are detected to be shorter than 10cm are due to sensor noise.
    # Do not publish information about them.
    if height_box < 0.1:
        pass
    else:
        # Declare a message object for publishing the box height information.
        box_height_info = <write your code here>
        # Update height of box.
        <write your code here>
        # Publish box height using the publisher argument passed to the callback function.
        <write your code here>

if __name__ == '__main__':
    # Initialize the ROS node here.
    rospy.init_node('compute_box_height', anonymous = False)

    # Wait for the topic that publishes sensor information to become available.
    rospy.loginfo('Waiting for topic %s to be published...', <use the correct topic name here>)
    rospy.wait_for_message('<sensor_info>', SensorInformation)
    rospy.loginfo('%s topic is now available!', sensor_info)

    # Create the publisher and subscriber here.
    bhi_publisher = rospy.Publisher('box_height_info', SensorInformation, queue_size=10)
    # Note here that an ADDITIONAL ARGUMENT (bhi_publisher) is passed to the subscriber. This is a way to pass
    # ONE additional argument to the subscriber callback. If you want to pass multiple arguments,
    # you can use a python dictionary. And if you don't want to use multiple arguments to the
    # subscriber callback then you can also consider using a Class Implementation like we saw in
    # the action server code illustration.
    rospy.Subscriber('<use correct topic name here>', <use correct message type here>, <use the correct callback name here>, bhi_publisher)

    # Prevent this code from exiting until Ctrl+C is pressed.
    rospy.spin()
