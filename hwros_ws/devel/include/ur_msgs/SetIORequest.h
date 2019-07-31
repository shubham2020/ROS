// Generated by gencpp from file ur_msgs/SetIORequest.msg
// DO NOT EDIT!


#ifndef UR_MSGS_MESSAGE_SETIOREQUEST_H
#define UR_MSGS_MESSAGE_SETIOREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur_msgs
{
template <class ContainerAllocator>
struct SetIORequest_
{
  typedef SetIORequest_<ContainerAllocator> Type;

  SetIORequest_()
    : fun(0)
    , pin(0)
    , state(0.0)  {
    }
  SetIORequest_(const ContainerAllocator& _alloc)
    : fun(0)
    , pin(0)
    , state(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _fun_type;
  _fun_type fun;

   typedef int8_t _pin_type;
  _pin_type pin;

   typedef float _state_type;
  _state_type state;



  enum {
    FUN_SET_DIGITAL_OUT = 1,
    FUN_SET_FLAG = 2,
    FUN_SET_ANALOG_OUT = 3,
    FUN_SET_TOOL_VOLTAGE = 4,
  };


  typedef boost::shared_ptr< ::ur_msgs::SetIORequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_msgs::SetIORequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetIORequest_

typedef ::ur_msgs::SetIORequest_<std::allocator<void> > SetIORequest;

typedef boost::shared_ptr< ::ur_msgs::SetIORequest > SetIORequestPtr;
typedef boost::shared_ptr< ::ur_msgs::SetIORequest const> SetIORequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_msgs::SetIORequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_msgs::SetIORequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'ur_msgs': ['/home/shubham/ROS/hwros_ws/src/universal_robot/ur_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur_msgs::SetIORequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_msgs::SetIORequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_msgs::SetIORequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_msgs::SetIORequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_msgs::SetIORequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_msgs::SetIORequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_msgs::SetIORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "144e866c50167f6d4b99948cba355b8c";
  }

  static const char* value(const ::ur_msgs::SetIORequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x144e866c50167f6dULL;
  static const uint64_t static_value2 = 0x4b99948cba355b8cULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_msgs::SetIORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_msgs/SetIORequest";
  }

  static const char* value(const ::ur_msgs::SetIORequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_msgs::SetIORequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 FUN_SET_DIGITAL_OUT = 1\n\
int8 FUN_SET_FLAG = 2\n\
int8 FUN_SET_ANALOG_OUT = 3\n\
int8 FUN_SET_TOOL_VOLTAGE = 4\n\
int8 fun\n\
int8 pin\n\
float32 state\n\
";
  }

  static const char* value(const ::ur_msgs::SetIORequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_msgs::SetIORequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fun);
      stream.next(m.pin);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetIORequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_msgs::SetIORequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_msgs::SetIORequest_<ContainerAllocator>& v)
  {
    s << indent << "fun: ";
    Printer<int8_t>::stream(s, indent + "  ", v.fun);
    s << indent << "pin: ";
    Printer<int8_t>::stream(s, indent + "  ", v.pin);
    s << indent << "state: ";
    Printer<float>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_MSGS_MESSAGE_SETIOREQUEST_H
