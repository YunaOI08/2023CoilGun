// Generated by gencpp from file lepton_msg_pkg/Lepton.msg
// DO NOT EDIT!


#ifndef LEPTON_MSG_PKG_MESSAGE_LEPTON_H
#define LEPTON_MSG_PKG_MESSAGE_LEPTON_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lepton_msg_pkg
{
template <class ContainerAllocator>
struct Lepton_
{
  typedef Lepton_<ContainerAllocator> Type;

  Lepton_()
    : msg()
    , size(0)  {
    }
  Lepton_(const ContainerAllocator& _alloc)
    : msg(_alloc)
    , size(0)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _msg_type;
  _msg_type msg;

   typedef uint16_t _size_type;
  _size_type size;





  typedef boost::shared_ptr< ::lepton_msg_pkg::Lepton_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lepton_msg_pkg::Lepton_<ContainerAllocator> const> ConstPtr;

}; // struct Lepton_

typedef ::lepton_msg_pkg::Lepton_<std::allocator<void> > Lepton;

typedef boost::shared_ptr< ::lepton_msg_pkg::Lepton > LeptonPtr;
typedef boost::shared_ptr< ::lepton_msg_pkg::Lepton const> LeptonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lepton_msg_pkg::Lepton_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lepton_msg_pkg::Lepton_<ContainerAllocator1> & lhs, const ::lepton_msg_pkg::Lepton_<ContainerAllocator2> & rhs)
{
  return lhs.msg == rhs.msg &&
    lhs.size == rhs.size;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lepton_msg_pkg::Lepton_<ContainerAllocator1> & lhs, const ::lepton_msg_pkg::Lepton_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lepton_msg_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lepton_msg_pkg::Lepton_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lepton_msg_pkg::Lepton_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lepton_msg_pkg::Lepton_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2356878e9e58b7d986678eb88cca055";
  }

  static const char* value(const ::lepton_msg_pkg::Lepton_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2356878e9e58b7dULL;
  static const uint64_t static_value2 = 0x986678eb88cca055ULL;
};

template<class ContainerAllocator>
struct DataType< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lepton_msg_pkg/Lepton";
  }

  static const char* value(const ::lepton_msg_pkg::Lepton_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] msg\n"
"uint16 size\n"
;
  }

  static const char* value(const ::lepton_msg_pkg::Lepton_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
      stream.next(m.size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Lepton_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lepton_msg_pkg::Lepton_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lepton_msg_pkg::Lepton_<ContainerAllocator>& v)
  {
    s << indent << "msg[]" << std::endl;
    for (size_t i = 0; i < v.msg.size(); ++i)
    {
      s << indent << "  msg[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.msg[i]);
    }
    s << indent << "size: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEPTON_MSG_PKG_MESSAGE_LEPTON_H
