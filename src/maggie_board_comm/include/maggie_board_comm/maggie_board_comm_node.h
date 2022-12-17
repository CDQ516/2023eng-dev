#ifndef _MAGGIE_BOARD_COMM_H
#define _MAGGIE_BOARD_COMM_H

#include <unistd.h>
#include <iostream>

#define LEFT_LEG_ONLINE_MASK 0x01
#define RIGHT_LEG_ONLINE_MASK 0x02
#define ON_GROUND_MASK 0x04
#define INIT_FINISH_MASK 0x08
#define BALANCE_OVERLOAD_WARNING_MASK 0x16
#define WHEEL_START_MASK 0x32

void chassis_board_status_handler(uint8_t *data, uint16_t length);
void imu_handler(uint8_t *data, uint16_t length);

#endif