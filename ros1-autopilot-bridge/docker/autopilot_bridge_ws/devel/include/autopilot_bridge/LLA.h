// Generated by gencpp from file autopilot_bridge/LLA.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_LLA_H
#define AUTOPILOT_BRIDGE_MESSAGE_LLA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autopilot_bridge
{
template <class ContainerAllocator>
struct LLA_
{
  typedef LLA_<ContainerAllocator> Type;

  LLA_()
    : lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
    }
  LLA_(const ContainerAllocator& _alloc)
    : lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
  (void)_alloc;
    }



   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef double _alt_type;
  _alt_type alt;





  typedef boost::shared_ptr< ::autopilot_bridge::LLA_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::LLA_<ContainerAllocator> const> ConstPtr;

}; // struct LLA_

typedef ::autopilot_bridge::LLA_<std::allocator<void> > LLA;

typedef boost::shared_ptr< ::autopilot_bridge::LLA > LLAPtr;
typedef boost::shared_ptr< ::autopilot_bridge::LLA const> LLAConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::LLA_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::LLA_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::LLA_<ContainerAllocator1> & lhs, const ::autopilot_bridge::LLA_<ContainerAllocator2> & rhs)
{
  return lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.alt == rhs.alt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::LLA_<ContainerAllocator1> & lhs, const ::autopilot_bridge::LLA_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::LLA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::LLA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::LLA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::LLA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::LLA_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::LLA_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::LLA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "800b265188e13fdc7e121024d9b6fa27";
  }

  static const char* value(const ::autopilot_bridge::LLA_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x800b265188e13fdcULL;
  static const uint64_t static_value2 = 0x7e121024d9b6fa27ULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::LLA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/LLA";
  }

  static const char* value(const ::autopilot_bridge::LLA_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::LLA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 lat\n"
"float64 lon\n"
"float64 alt\n"
;
  }

  static const char* value(const ::autopilot_bridge::LLA_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::LLA_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.alt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LLA_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::LLA_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::LLA_<ContainerAllocator>& v)
  {
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "alt: ";
    Printer<double>::stream(s, indent + "  ", v.alt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_LLA_H
