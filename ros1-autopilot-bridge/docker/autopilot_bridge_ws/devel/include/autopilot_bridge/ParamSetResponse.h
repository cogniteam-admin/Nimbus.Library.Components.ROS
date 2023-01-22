// Generated by gencpp from file autopilot_bridge/ParamSetResponse.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_PARAMSETRESPONSE_H
#define AUTOPILOT_BRIDGE_MESSAGE_PARAMSETRESPONSE_H


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
struct ParamSetResponse_
{
  typedef ParamSetResponse_<ContainerAllocator> Type;

  ParamSetResponse_()
    : ok(false)  {
    }
  ParamSetResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ParamSetResponse_

typedef ::autopilot_bridge::ParamSetResponse_<std::allocator<void> > ParamSetResponse;

typedef boost::shared_ptr< ::autopilot_bridge::ParamSetResponse > ParamSetResponsePtr;
typedef boost::shared_ptr< ::autopilot_bridge::ParamSetResponse const> ParamSetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator1> & lhs, const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator1> & lhs, const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/ParamSetResponse";
  }

  static const char* value(const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n"
"\n"
;
  }

  static const char* value(const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamSetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::ParamSetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::ParamSetResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_PARAMSETRESPONSE_H
