#include <ros/ros.h>
#include <std_msgs/String.h>
#include <maggie_board_comm/joint_angle_cmd.h>
#include <iostream>


int main(int argc, char **argv) {
    
    ros::init(argc, argv, "maggie_joint_control_node");

    std::cout << "Starting Control" << std::endl;
    
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<maggie_board_comm::joint_angle_cmd>("joint_cmd", 1000);

    ros::Rate loop_rate(100);
    maggie_board_comm::joint_angle_cmd msg;
    while (ros::ok())
    {
        std::cout << "Controllig..." << std::endl;
        msg.joint1 = 27.7;
        msg.joint2 = 54.4;
        pub.publish(msg);
        loop_rate.sleep();
    }
    
    return 0;
}
