// Generated by gencpp from file maggie_board_comm_msgs/joint_angle_cmd.msg
// DO NOT EDIT!


#ifndef MAGGIE_BOARD_COMM_MSGS_MESSAGE_JOINT_ANGLE_CMD_H
#define MAGGIE_BOARD_COMM_MSGS_MESSAGE_JOINT_ANGLE_CMD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace maggie_board_comm_msgs
{
template <class ContainerAllocator>
struct joint_angle_cmd_
{
  typedef joint_angle_cmd_<ContainerAllocator> Type;

  joint_angle_cmd_()
    : joint1(0.0)
    , joint2(0.0)  {
    }
  joint_angle_cmd_(const ContainerAllocator& _alloc)
    : joint1(0.0)
    , joint2(0.0)  {
  (void)_alloc;
    }



   typedef float _joint1_type;
  _joint1_type joint1;

   typedef float _joint2_type;
  _joint2_type joint2;





  typedef boost::shared_ptr< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> const> ConstPtr;

}; // struct joint_angle_cmd_

typedef ::maggie_board_comm_msgs::joint_angle_cmd_<std::allocator<void> > joint_angle_cmd;

typedef boost::shared_ptr< ::maggie_board_comm_msgs::joint_angle_cmd > joint_angle_cmdPtr;
typedef boost::shared_ptr< ::maggie_board_comm_msgs::joint_angle_cmd const> joint_angle_cmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator1> & lhs, const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator2> & rhs)
{
  return lhs.joint1 == rhs.joint1 &&
    lhs.joint2 == rhs.joint2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator1> & lhs, const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace maggie_board_comm_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a93712cb5533b8fbec1204e5f9479119";
  }

  static const char* value(const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa93712cb5533b8fbULL;
  static const uint64_t static_value2 = 0xec1204e5f9479119ULL;
};

template<class ContainerAllocator>
struct DataType< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "maggie_board_comm_msgs/joint_angle_cmd";
  }

  static const char* value(const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 joint1\n"
"float32 joint2\n"
;
  }

  static const char* value(const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint1);
      stream.next(m.joint2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct joint_angle_cmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::maggie_board_comm_msgs::joint_angle_cmd_<ContainerAllocator>& v)
  {
    s << indent << "joint1: ";
    Printer<float>::stream(s, indent + "  ", v.joint1);
    s << indent << "joint2: ";
    Printer<float>::stream(s, indent + "  ", v.joint2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAGGIE_BOARD_COMM_MSGS_MESSAGE_JOINT_ANGLE_CMD_H