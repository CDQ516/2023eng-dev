#include "maggie_board_comm/board_status.h"
#include "maggie_board_comm/board_cmd.h"
#include "maggie_board_comm/joint_angle_cmd.h"
#include "maggie_board_comm/maggie_board_comm_node.h"
#include <iostream>
#include "maggie_board_comm/comm.h"
#include <thread>
#include "maggie_board_comm/protocol.h"
#include <unistd.h>
#include <string>
#include <chrono>
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Transform.h>
#include <tf/tf.h>
//#include <Eigen/Geometry>

Comm ser;
ros::Subscriber board_cmd_sub;
ros::Publisher board_state_pub;
ros::Publisher imu_data_pub;
long imu_seq_id = 0;

void chassis_board_status_handler(uint8_t *data, uint16_t length){
    chassis_feedback_data_t *r_data = (chassis_feedback_data_t *)data;
    maggie_board_comm::board_status stateMsg;
    stateMsg.isWheelEnabled = r_data->chassis_status & INIT_FINISH_MASK;
    stateMsg.isLeftWheelOnline = r_data->chassis_status & LEFT_LEG_ONLINE_MASK;
    stateMsg.isRightWheelOnline = r_data->chassis_status & RIGHT_LEG_ONLINE_MASK;
    stateMsg.isForceShutdownTriggered = r_data->force_shutdown_triggered;
    stateMsg.tiltAngle = r_data->tiltAngle;
    stateMsg.zMove = r_data->zMove;
    board_state_pub.publish(stateMsg);
}

void boardControlMessage_Callback(const maggie_board_comm::joint_angle_cmd::ConstPtr& msg){
    ser.transmit(msg->joint1, msg->joint2);
}

void imu_handler(uint8_t *data, uint16_t length){
    imu_feedback_data_t *r_data = (imu_feedback_data_t*)data;
    sensor_msgs::Imu imuMsg;
    int tmpCov;
    imuMsg.header.frame_id = "livox_frame";
    imuMsg.angular_velocity.x = r_data->angle_vel[0];
    imuMsg.angular_velocity.y = r_data->angle_vel[1];
    imuMsg.angular_velocity.z = r_data->angle_vel[2];
    imuMsg.linear_acceleration.x = r_data->linear_acc[0];
    imuMsg.linear_acceleration.y = r_data->linear_acc[1];
    imuMsg.linear_acceleration.z = r_data->linear_acc[2];

    /*
    Eigen::Quaterniond eigenQ = Eigen::AngleAxisd(r_data->orientation_euler[2], Eigen::Vector3d::UnitZ()) *
                                Eigen::AngleAxisd(r_data->orientation_euler[1], Eigen::Vector3d::UnitY()) *
                                Eigen::AngleAxisd(r_data->orientation_euler[0], Eigen::Vector3d::UnitX());
    // tf::Quaternion tmpQuat = tf::createQuaternionFromRPY(r_data->orientation_euler[1], r_data->orientation_euler[0], r_data->orientation_euler[2]);
    imuMsg.orientation.x = eigenQ.x();
    imuMsg.orientation.y = eigenQ.y();
    imuMsg.orientation.z = eigenQ.z();
    imuMsg.orientation.w = eigenQ.w();
    */
    // imuMsg.orientation.x = r_data->quat[0];
    // imuMsg.orientation.y = r_data->quat[1];
    // imuMsg.orientation.z = r_data->quat[2];
    // imuMsg.orientation.w = r_data->quat[3];
    

    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 3; j++){
            tmpCov = i == j ? 1 : 0;
            imuMsg.angular_velocity_covariance[i * 3 + j] = tmpCov;
            imuMsg.linear_acceleration_covariance[i * 3 + j] = tmpCov;
            imuMsg.orientation_covariance[i * 3 + j] = tmpCov;
        }
    }
    imuMsg.header.stamp = ros::Time::now();
    imu_data_pub.publish(imuMsg);
}

int main(int argc, char** argv){
    ros::init(argc, argv, "maggie_board_communication");
    ros::NodeHandle n;
    ROS_INFO("This is board comm node");
    maggie_board_comm::board_status boardStatus;
    //board_state_pub = n.advertise<maggie_board_comm::board_status>("board_status", 1000);
    board_cmd_sub = n.subscribe("joint_cmd", 1000, boardControlMessage_Callback);
    //imu_data_pub = n.advertise<sensor_msgs::Imu>("imu_data", 1000);

    ser.open();
    while(ros::ok())
    {
        //ser.receive();
        ros::spinOnce();
    }
    ser.close();
    return 0;
}