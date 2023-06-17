// Generated by gencpp from file flir_lepton_msgs/FlirLeptonBatchMsg.msg
// DO NOT EDIT!


#ifndef FLIR_LEPTON_MSGS_MESSAGE_FLIRLEPTONBATCHMSG_H
#define FLIR_LEPTON_MSGS_MESSAGE_FLIRLEPTONBATCHMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>
#include <flir_lepton_msgs/TemperaturesMsg.h>

namespace flir_lepton_msgs
{
template <class ContainerAllocator>
struct FlirLeptonBatchMsg_
{
  typedef FlirLeptonBatchMsg_<ContainerAllocator> Type;

  FlirLeptonBatchMsg_()
    : header()
    , thermalImage()
    , temperatures()  {
    }
  FlirLeptonBatchMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , thermalImage(_alloc)
    , temperatures(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _thermalImage_type;
  _thermalImage_type thermalImage;

   typedef  ::flir_lepton_msgs::TemperaturesMsg_<ContainerAllocator>  _temperatures_type;
  _temperatures_type temperatures;





  typedef boost::shared_ptr< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> const> ConstPtr;

}; // struct FlirLeptonBatchMsg_

typedef ::flir_lepton_msgs::FlirLeptonBatchMsg_<std::allocator<void> > FlirLeptonBatchMsg;

typedef boost::shared_ptr< ::flir_lepton_msgs::FlirLeptonBatchMsg > FlirLeptonBatchMsgPtr;
typedef boost::shared_ptr< ::flir_lepton_msgs::FlirLeptonBatchMsg const> FlirLeptonBatchMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator1> & lhs, const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.thermalImage == rhs.thermalImage &&
    lhs.temperatures == rhs.temperatures;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator1> & lhs, const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace flir_lepton_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5af4715870039c2b74ee43a75b8bccbd";
  }

  static const char* value(const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5af4715870039c2bULL;
  static const uint64_t static_value2 = 0x74ee43a75b8bccbdULL;
};

template<class ContainerAllocator>
struct DataType< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flir_lepton_msgs/FlirLeptonBatchMsg";
  }

  static const char* value(const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# The thermal image acquired from flir_lepton sensor\n"
"sensor_msgs/Image thermalImage\n"
"\n"
"# The temperatures in each pixel after calibration\n"
"TemperaturesMsg temperatures\n"
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
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: flir_lepton_msgs/TemperaturesMsg\n"
"Header header\n"
"\n"
"# The temperatures in each pixel after calibration\n"
"std_msgs/Float32MultiArray values\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float32[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.thermalImage);
      stream.next(m.temperatures);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FlirLeptonBatchMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::flir_lepton_msgs::FlirLeptonBatchMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "thermalImage: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.thermalImage);
    s << indent << "temperatures: ";
    s << std::endl;
    Printer< ::flir_lepton_msgs::TemperaturesMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.temperatures);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FLIR_LEPTON_MSGS_MESSAGE_FLIRLEPTONBATCHMSG_H