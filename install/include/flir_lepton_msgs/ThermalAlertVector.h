// Generated by gencpp from file flir_lepton_msgs/ThermalAlertVector.msg
// DO NOT EDIT!


#ifndef FLIR_LEPTON_MSGS_MESSAGE_THERMALALERTVECTOR_H
#define FLIR_LEPTON_MSGS_MESSAGE_THERMALALERTVECTOR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <flir_lepton_msgs/ThermalAlert.h>

namespace flir_lepton_msgs
{
template <class ContainerAllocator>
struct ThermalAlertVector_
{
  typedef ThermalAlertVector_<ContainerAllocator> Type;

  ThermalAlertVector_()
    : header()
    , alerts()  {
    }
  ThermalAlertVector_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , alerts(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::flir_lepton_msgs::ThermalAlert_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::flir_lepton_msgs::ThermalAlert_<ContainerAllocator> >> _alerts_type;
  _alerts_type alerts;





  typedef boost::shared_ptr< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> const> ConstPtr;

}; // struct ThermalAlertVector_

typedef ::flir_lepton_msgs::ThermalAlertVector_<std::allocator<void> > ThermalAlertVector;

typedef boost::shared_ptr< ::flir_lepton_msgs::ThermalAlertVector > ThermalAlertVectorPtr;
typedef boost::shared_ptr< ::flir_lepton_msgs::ThermalAlertVector const> ThermalAlertVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator1> & lhs, const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.alerts == rhs.alerts;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator1> & lhs, const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace flir_lepton_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbc179673686a6053173bda4dbac0990";
  }

  static const char* value(const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbc179673686a605ULL;
  static const uint64_t static_value2 = 0x3173bda4dbac0990ULL;
};

template<class ContainerAllocator>
struct DataType< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flir_lepton_msgs/ThermalAlertVector";
  }

  static const char* value(const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"ThermalAlert[] alerts\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: flir_lepton_msgs/ThermalAlert\n"
"GeneralAlertInfo info\n"
"\n"
"float32 temperature\n"
"\n"
"================================================================================\n"
"MSG: flir_lepton_msgs/GeneralAlertInfo\n"
"float64 yaw\n"
"float64 pitch\n"
"float32 probability\n"
;
  }

  static const char* value(const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.alerts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ThermalAlertVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::flir_lepton_msgs::ThermalAlertVector_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "alerts[]" << std::endl;
    for (size_t i = 0; i < v.alerts.size(); ++i)
    {
      s << indent << "  alerts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::flir_lepton_msgs::ThermalAlert_<ContainerAllocator> >::stream(s, indent + "    ", v.alerts[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // FLIR_LEPTON_MSGS_MESSAGE_THERMALALERTVECTOR_H
