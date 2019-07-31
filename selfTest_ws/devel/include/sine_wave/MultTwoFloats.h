// Generated by gencpp from file sine_wave/MultTwoFloats.msg
// DO NOT EDIT!


#ifndef SINE_WAVE_MESSAGE_MULTTWOFLOATS_H
#define SINE_WAVE_MESSAGE_MULTTWOFLOATS_H

#include <ros/service_traits.h>


#include <sine_wave/MultTwoFloatsRequest.h>
#include <sine_wave/MultTwoFloatsResponse.h>


namespace sine_wave
{

struct MultTwoFloats
{

typedef MultTwoFloatsRequest Request;
typedef MultTwoFloatsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MultTwoFloats
} // namespace sine_wave


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sine_wave::MultTwoFloats > {
  static const char* value()
  {
    return "75900da305351b83210613bd5136a6e2";
  }

  static const char* value(const ::sine_wave::MultTwoFloats&) { return value(); }
};

template<>
struct DataType< ::sine_wave::MultTwoFloats > {
  static const char* value()
  {
    return "sine_wave/MultTwoFloats";
  }

  static const char* value(const ::sine_wave::MultTwoFloats&) { return value(); }
};


// service_traits::MD5Sum< ::sine_wave::MultTwoFloatsRequest> should match 
// service_traits::MD5Sum< ::sine_wave::MultTwoFloats > 
template<>
struct MD5Sum< ::sine_wave::MultTwoFloatsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sine_wave::MultTwoFloats >::value();
  }
  static const char* value(const ::sine_wave::MultTwoFloatsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sine_wave::MultTwoFloatsRequest> should match 
// service_traits::DataType< ::sine_wave::MultTwoFloats > 
template<>
struct DataType< ::sine_wave::MultTwoFloatsRequest>
{
  static const char* value()
  {
    return DataType< ::sine_wave::MultTwoFloats >::value();
  }
  static const char* value(const ::sine_wave::MultTwoFloatsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sine_wave::MultTwoFloatsResponse> should match 
// service_traits::MD5Sum< ::sine_wave::MultTwoFloats > 
template<>
struct MD5Sum< ::sine_wave::MultTwoFloatsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sine_wave::MultTwoFloats >::value();
  }
  static const char* value(const ::sine_wave::MultTwoFloatsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sine_wave::MultTwoFloatsResponse> should match 
// service_traits::DataType< ::sine_wave::MultTwoFloats > 
template<>
struct DataType< ::sine_wave::MultTwoFloatsResponse>
{
  static const char* value()
  {
    return DataType< ::sine_wave::MultTwoFloats >::value();
  }
  static const char* value(const ::sine_wave::MultTwoFloatsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SINE_WAVE_MESSAGE_MULTTWOFLOATS_H