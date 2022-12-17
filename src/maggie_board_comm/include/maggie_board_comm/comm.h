#ifndef _COMM_H
#define _COMM_H

#include <serial/serial.h>
#include <string>
#include <iostream>
#include "protocol.h"

#define DEFAULT_BAUDRATE 115200
#define DEFAULT_BUFF_LENGTH 1000

#define SOF 0xA5
#define GIMCtrl_CMD_ID 0x0501
typedef struct __attribute__((packed))
{
    float yaw; //
    float pit; //
    float dist; //
    uint8_t shoot;
} detection_t;

//up
#define CMD_MCU_DATA 0x1021
typedef struct __attribute__((packed))
{
    float curr_yaw;   //绝对量 yaw顺时针为正 /度
    float curr_pitch; //pit水平为0 向下为正 /度
    float shoot_speed; 
} pc_mcu_data_t;

#define CMD_CHASSIS_CONTROL_DATA 0x0401
typedef struct __attribute__((packed))
{
    uint8_t chassis_status;
    uint8_t force_shutdown;
}ext_balance_chassis_control_data_t;

#define CMD_CHASSIS_FEEDBACK_DATA 0x0402
typedef struct __attribute__((packed))
{
    uint8_t chassis_status;
    uint8_t force_shutdown_triggered;
    float tiltAngle;
    float zMove;
}chassis_feedback_data_t;

#define CMD_IMU_DATA 0x403
typedef struct __attribute__((packed))
{
    float orientation_euler[4];
    float angle_vel[3];
    float linear_acc[3];
} imu_feedback_data_t;

#define CMD_JOINT_ANGLE 0x0502
typedef struct __attribute__((packed))
{
    uint8_t joint[8]; //
} joint_angle_t;


class Comm
{
public:
    Comm();
    void open(const std::string &port = "/dev/ttyUSB0");
    bool transmit(float angle1, float angle2);
    bool isOpen() const;
    bool receive();
    void close();

    ~Comm();

private:
    serial::Serial ser;
    ProtocolConsumer rec;
    uint8_t send[DEFAULT_BUFF_LENGTH];
    uint8_t recv[DEFAULT_BUFF_LENGTH];
    bool state;
};

extern pc_mcu_data_t gim_state;

#endif