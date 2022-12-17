// Generated by gencpp from file maggie_board_comm/board_status.msg
// DO NOT EDIT!


#ifndef MAGGIE_BOARD_COMM_MESSAGE_BOARD_STATUS_H
#define MAGGIE_BOARD_COMM_MESSAGE_BOARD_STATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace maggie_board_comm
{
template <class ContainerAllocator>
struct board_status_
{
  typedef board_status_<ContainerAllocator> Type;

  board_status_()
    : isLeftWheelOnline(0)
    , isRightWheelOnline(0)
    , isWheelEnabled(0)
    , isForceShutdownTriggered(0)
    , tiltAngle(0.0)
    , zMove(0.0)  {
    }
  board_status_(const ContainerAllocator& _alloc)
    : isLeftWheelOnline(0)
    , isRightWheelOnline(0)
    , isWheelEnabled(0)
    , isForceShutdownTriggered(0)
    , tiltAngle(0.0)
    , zMove(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _isLeftWheelOnline_type;
  _isLeftWheelOnline_type isLeftWheelOnline;

   typedef uint8_t _isRightWheelOnline_type;
  _isRightWheelOnline_type isRightWheelOnline;

   typedef uint8_t _isWheelEnabled_type;
  _isWheelEnabled_type isWheelEnabled;

   typedef uint8_t _isForceShutdownTriggered_type;
  _isForceShutdownTriggered_type isForceShutdownTriggered;

   typedef float _tiltAngle_type;
  _tiltAngle_type tiltAngle;

   typedef float _zMove_type;
  _zMove_type zMove;





  typedef boost::shared_ptr< ::maggie_board_comm::board_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::maggie_board_comm::board_status_<ContainerAllocator> const> ConstPtr;

}; // struct board_status_

typedef ::maggie_board_comm::board_status_<std::allocator<void> > board_status;

typedef boost::shared_ptr< ::maggie_board_comm::board_status > board_statusPtr;
typedef boost::shared_ptr< ::maggie_board_comm::board_status const> board_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::maggie_board_comm::board_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::maggie_board_comm::board_status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::maggie_board_comm::board_status_<ContainerAllocator1> & lhs, const ::maggie_board_comm::board_status_<ContainerAllocator2> & rhs)
{
  return lhs.isLeftWheelOnline == rhs.isLeftWheelOnline &&
    lhs.isRightWheelOnline == rhs.isRightWheelOnline &&
    lhs.isWheelEnabled == rhs.isWheelEnabled &&
    lhs.isForceShutdownTriggered == rhs.isForceShutdownTriggered &&
    lhs.tiltAngle == rhs.tiltAngle &&
    lhs.zMove == rhs.zMove;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::maggie_board_comm::board_status_<ContainerAllocator1> & lhs, const ::maggie_board_comm::board_status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace maggie_board_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::maggie_board_comm::board_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maggie_board_comm::board_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maggie_board_comm::board_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maggie_board_comm::board_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maggie_board_comm::board_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maggie_board_comm::board_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::maggie_board_comm::board_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05468699310a811ac670b36ca3436d6c";
  }

  static const char* value(const ::maggie_board_comm::board_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05468699310a811aULL;
  static const uint64_t static_value2 = 0xc670b36ca3436d6cULL;
};

template<class ContainerAllocator>
struct DataType< ::maggie_board_comm::board_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "maggie_board_comm/board_status";
  }

  static const char* value(const ::maggie_board_comm::board_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::maggie_board_comm::board_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 isLeftWheelOnline\n"
"uint8 isRightWheelOnline\n"
"uint8 isWheelEnabled\n"
"uint8 isForceShutdownTriggered\n"
"float32 tiltAngle\n"
"float32 zMove\n"
;
  }

  static const char* value(const ::maggie_board_comm::board_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::maggie_board_comm::board_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.isLeftWheelOnline);
      stream.next(m.isRightWheelOnline);
      stream.next(m.isWheelEnabled);
      stream.next(m.isForceShutdownTriggered);
      stream.next(m.tiltAngle);
      stream.next(m.zMove);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct board_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::maggie_board_comm::board_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::maggie_board_comm::board_status_<ContainerAllocator>& v)
  {
    s << indent << "isLeftWheelOnline: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isLeftWheelOnline);
    s << indent << "isRightWheelOnline: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isRightWheelOnline);
    s << indent << "isWheelEnabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isWheelEnabled);
    s << indent << "isForceShutdownTriggered: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isForceShutdownTriggered);
    s << indent << "tiltAngle: ";
    Printer<float>::stream(s, indent + "  ", v.tiltAngle);
    s << indent << "zMove: ";
    Printer<float>::stream(s, indent + "  ", v.zMove);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAGGIE_BOARD_COMM_MESSAGE_BOARD_STATUS_H
