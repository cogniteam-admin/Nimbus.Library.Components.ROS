// Generated by gencpp from file autopilot_bridge/FenceSetAllRequest.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_FENCESETALLREQUEST_H
#define AUTOPILOT_BRIDGE_MESSAGE_FENCESETALLREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <autopilot_bridge/Fencepoint.h>

namespace autopilot_bridge
{
template <class ContainerAllocator>
struct FenceSetAllRequest_
{
  typedef FenceSetAllRequest_<ContainerAllocator> Type;

  FenceSetAllRequest_()
    : points()  {
    }
  FenceSetAllRequest_(const ContainerAllocator& _alloc)
    : points(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::autopilot_bridge::Fencepoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::autopilot_bridge::Fencepoint_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FenceSetAllRequest_

typedef ::autopilot_bridge::FenceSetAllRequest_<std::allocator<void> > FenceSetAllRequest;

typedef boost::shared_ptr< ::autopilot_bridge::FenceSetAllRequest > FenceSetAllRequestPtr;
typedef boost::shared_ptr< ::autopilot_bridge::FenceSetAllRequest const> FenceSetAllRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator1> & lhs, const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator2> & rhs)
{
  return lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator1> & lhs, const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ffd74dfa964a04e3f477faa3684da1c6";
  }

  static const char* value(const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xffd74dfa964a04e3ULL;
  static const uint64_t static_value2 = 0xf477faa3684da1c6ULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/FenceSetAllRequest";
  }

  static const char* value(const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Fencepoint[] points\n"
"\n"
"================================================================================\n"
"MSG: autopilot_bridge/Fencepoint\n"
"float64 lat\n"
"float64 lon\n"
;
  }

  static const char* value(const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FenceSetAllRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::FenceSetAllRequest_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autopilot_bridge::Fencepoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_FENCESETALLREQUEST_H
