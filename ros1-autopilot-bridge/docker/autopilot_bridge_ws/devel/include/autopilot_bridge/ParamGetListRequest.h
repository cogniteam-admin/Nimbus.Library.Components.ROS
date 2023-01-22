// Generated by gencpp from file autopilot_bridge/ParamGetListRequest.msg
// DO NOT EDIT!


#ifndef AUTOPILOT_BRIDGE_MESSAGE_PARAMGETLISTREQUEST_H
#define AUTOPILOT_BRIDGE_MESSAGE_PARAMGETLISTREQUEST_H


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
struct ParamGetListRequest_
{
  typedef ParamGetListRequest_<ContainerAllocator> Type;

  ParamGetListRequest_()
    : name()  {
    }
  ParamGetListRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ParamGetListRequest_

typedef ::autopilot_bridge::ParamGetListRequest_<std::allocator<void> > ParamGetListRequest;

typedef boost::shared_ptr< ::autopilot_bridge::ParamGetListRequest > ParamGetListRequestPtr;
typedef boost::shared_ptr< ::autopilot_bridge::ParamGetListRequest const> ParamGetListRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator1> & lhs, const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator1> & lhs, const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autopilot_bridge

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3f2d21c30868b92dc41a0431bacd47b2";
  }

  static const char* value(const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3f2d21c30868b92dULL;
  static const uint64_t static_value2 = 0xc41a0431bacd47b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autopilot_bridge/ParamGetListRequest";
  }

  static const char* value(const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] name\n"
;
  }

  static const char* value(const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamGetListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autopilot_bridge::ParamGetListRequest_<ContainerAllocator>& v)
  {
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOPILOT_BRIDGE_MESSAGE_PARAMGETLISTREQUEST_H
