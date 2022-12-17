#include "maggie_board_comm/comm.h"
#include "maggie_board_comm/maggie_board_comm_node.h"
#include <algorithm>

typedef union
{
	float data;
	uint8_t data8[4];
} data_u;

pc_mcu_data_t gim_state = {0};
chassis_feedback_data_t chassis_board_state = {0};

static void mcu_handler(uint8_t *data, uint16_t length)
{
    gim_state = *(pc_mcu_data_t *)data;
    gim_state.curr_yaw = gim_state.curr_yaw / 180 * 3.14159f;
    gim_state.curr_pitch = gim_state.curr_pitch / 180 * 3.14159f;
    
    //update_pose(mcu_data->curr_yaw, mcu_data->curr_pitch, 0);
}

Comm::Comm() : state(false)
{
    rec.register_handler(CMD_MCU_DATA, mcu_handler);
    rec.register_handler(CMD_CHASSIS_FEEDBACK_DATA, chassis_board_status_handler);
    rec.register_handler(CMD_IMU_DATA, imu_handler);
}

void Comm::open(const std::string &port)
{
    try
    {
        ser.setPort(port);
        ser.setBaudrate(DEFAULT_BAUDRATE);
        ser.setBytesize(serial::eightbits);
        ser.setStopbits(serial::stopbits_one);
        ser.setParity(serial::parity_even);
        auto timeout = serial::Timeout(1000);
        ser.setTimeout(timeout);
        ser.open();
        std::cout << "Open Serial Success!" << std::endl;
    }
    catch (std::exception &e)
    {
        
        std::cout << "Open Serial Fail!" << e.what() << std::endl;
        scanf("%f", &gim_state.curr_pitch);
    }
    state = true;
}

bool Comm::isOpen() const
{
    return state;
}

void Comm::close(){
    ser.close();
    
}

bool Comm::transmit(float angle1, float angle2)
{
    if (!state)
    {
        return false;
    }

    uint16_t len;
    joint_angle_t msg;
    data_u t[2];
    
    t[0].data=angle1;
    t[1].data=angle2;
    for(int i=0;i<2;i++)
    {
        for (int j = 0; j < 4; j++)
            msg.joint[i * 4 + j] = t[i].data8[j];
    }

    len = protocol_provider.pack(send, SOF, CMD_JOINT_ANGLE, (uint8_t *)&msg, sizeof(joint_angle_t));
    return ser.write(send, len);
}

bool Comm::receive()
{
    if (!state)
    {
        return false;
    }
    size_t length = ser.read(recv, std::min<size_t>(ser.available(), DEFAULT_BUFF_LENGTH));
    rec.unpack_process(recv, length);
    return true;
}

Comm::~Comm()
{
    return;
}