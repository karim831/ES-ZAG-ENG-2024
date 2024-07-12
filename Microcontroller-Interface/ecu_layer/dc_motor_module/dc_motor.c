/* 
 * File:   dc_motor.c
 * Author: karim osama
*/

#include "./dc_motor.h"

#if (DC_MOTOR_CFG == CONFIG_ENABLE) 
dc_motor_turn(dc_motor_t *_dc_motor){
    Std_RETURN_TYPE ret = E_OK;
    if(!_dc_motor)
        ret = E_NOT_OK;
    else{
        if(_dc_motor->rotation == DC_MOTOR_CW){
            gpio_pin_set_logic(_dc_motor->pin1);
            gpio_pin_clear_logic(_dc_motor->pin0);
        }
        else{
            gpio_pin_set_logic(_dc_motor->pin0);
            gpio_pin_clear_logic(_dc_motor->pin1);
        }
    }
    return ret;
}
#endif
