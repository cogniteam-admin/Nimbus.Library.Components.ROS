// Generated by gencpp from file autopilot_bridge/Heartbeat.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_HEARTBEAT_H
#define AUTOPILOT_BRIDGE_MESSAGE_HEARTBEAT_H


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
struct Heartbeat_
{
  typedef Heartbeat_<ContainerAllocator> Type;

  Heartbeat_()
    : counter(0)  {
    }
  Heartbeat_(const ContainerAllocator& _alloc)
    : counter(0)  {
  (void)_alloc;
    }



   typedef uint32_t _counter_type;
  _counter_type counter;





  typedef boost::shared_ptr< ::autopilot_bridge::Heartbeat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::Heartbeat_<ContainerAllocator> const> ConstPtr;

}; // struct Heartbeat_

typedef ::autopilot_bridge::Heartbeat_<std::allocator<void> > Heartbeat;

typedef boost::shared_ptr< ::autopilot_bridge::Heartbeat > HeartbeatPtr;
typedef boost::shared_ptr< ::autopilot_bridge::Heartbeat const> HeartbeatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::Heartbeat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::Heartbeat_<ContainerAllocator1> & lhs, const ::autopilot_bridge::Heartbeat_<ContainerAllocator2> & rhs)
{
  return lhs.counter == rhs.counter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::Heartbeat_<ContainerAllocator1> & lhs, const ::autopilot_bridge::Heartbeat_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::Heartbeat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::Heartbeat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::Heartbeat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edfa4d08cb5e6d4c5fd223930476506d";
  }

  static const char* value(const ::autopilot_bridge::Heartbeat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xedfa4d08cb5e6d4cULL;
  static const uint64_t static_value2 = 0x5fd223930476506dULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/Heartbeat";
  }

  static const char* value(const ::autopilot_bridge::Heartbeat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 counter\n"
;
  }

  static const char* value(const ::autopilot_bridge::Heartbeat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.counter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Heartbeat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::Heartbeat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::Heartbeat_<ContainerAllocator>& v)
  {
    s << indent << "counter: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.counter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_HEARTBEAT_H
