// Generated by gencpp from file autopilot_bridge/RallyGetAllResponse.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_RALLYGETALLRESPONSE_H
#define AUTOPILOT_BRIDGE_MESSAGE_RALLYGETALLRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <autopilot_bridge/Rallypoint.h>

namespace autopilot_bridge
{
template <class ContainerAllocator>
struct RallyGetAllResponse_
{
  typedef RallyGetAllResponse_<ContainerAllocator> Type;

  RallyGetAllResponse_()
    : ok(false)
    , points()  {
    }
  RallyGetAllResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef std::vector< ::autopilot_bridge::Rallypoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::autopilot_bridge::Rallypoint_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RallyGetAllResponse_

typedef ::autopilot_bridge::RallyGetAllResponse_<std::allocator<void> > RallyGetAllResponse;

typedef boost::shared_ptr< ::autopilot_bridge::RallyGetAllResponse > RallyGetAllResponsePtr;
typedef boost::shared_ptr< ::autopilot_bridge::RallyGetAllResponse const> RallyGetAllResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator1> & lhs, const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator1> & lhs, const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2828381673d0b45c532f4eea68ab4e0";
  }

  static const char* value(const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2828381673d0b45ULL;
  static const uint64_t static_value2 = 0xc532f4eea68ab4e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/RallyGetAllResponse";
  }

  static const char* value(const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n"
"Rallypoint[] points\n"
"\n"
"\n"
"================================================================================\n"
"MSG: autopilot_bridge/Rallypoint\n"
"float64 lat\n"
"float64 lon\n"
"float64 alt\n"
"float64 break_alt\n"
"float64 land_dir\n"
"uint8 flags\n"
;
  }

  static const char* value(const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RallyGetAllResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::RallyGetAllResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autopilot_bridge::Rallypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_RALLYGETALLRESPONSE_H
