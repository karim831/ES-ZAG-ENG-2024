/* 
 * File:   dc_motor.c
 * Author: karim osama
*/

#include "./dc_motor.h"

#if (DC_MOTOR_CFG == CONFIG_ENABLE) 
STD_RETURN_TYPE dc_motor_init(dc_motor_t *_dc_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_dc_motor)
        ret = E_NOT_OK;
    else{
        gpio_pin_set_direction(&_dc_motor->pin0);
        gpio_pin_set_direction(&_dc_motor->pin1);
    }
    return ret;
}


STD_RETURN_TYPE dc_motor_turn_cw(dc_motor_t *_dc_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_dc_motor)
        ret = E_NOT_OK;
    else{
        gpio_pin_set_logic(&_dc_motor->pin0);
        gpio_pin_clear_logic(&_dc_motor->pin1);
    }
    return ret;
}

STD_RETURN_TYPE dc_motor_turn_ccw(dc_motor_t *_dc_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_dc_motor)
        ret = E_NOT_OK;
    else{
        gpio_pin_set_logic(&_dc_motor->pin1);
        gpio_pin_clear_logic(&_dc_motor->pin0);      
    }
    return ret;
}
#endif
