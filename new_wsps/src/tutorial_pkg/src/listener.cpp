/*
 * listener.cpp
 *
 *  Created on: 28-Oct-2017
 *      Author: hp
 */

#include "ros/ros.h"
#include "std_msgs/String.h"

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "mylistener");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("chatter", 1, chatterCallback);

  ros::Rate loop_rate(5);
  while(ros::ok())
  {
  	ros::spinOnce();
	loop_rate.sleep();
  }

  return 0;
}
