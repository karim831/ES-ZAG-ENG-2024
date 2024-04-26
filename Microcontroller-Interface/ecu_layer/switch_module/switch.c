/* 
 * File:   switch.h
 * Author: karim osama
*/
#include "./switch.h"
STD_RETURN_TYPE switch_init(switch_t* _switch_obj){
    STD_RETURN_TYPE ret = E_OK;
    if(!_switch_obj)
        ret = E_NOT_OK;
    else
        ret = gpio_pin_set_direction(&_switch_obj->pin); 
    return ret;
}

STD_RETURN_TYPE switch_read_status(switch_t* _switch_obj,uint8* _status){
    STD_RETURN_TYPE ret = E_OK;
    if(!_switch_obj)
        ret = E_NOT_OK;
    else{
        ret = gpio_pin_read_logic(&_switch_obj->pin,_status);
        switch(_switch_obj->op){
            case SWITCH_PULL_DOWN :
                if(*_status == GPIO_LOGIC_HIGH)
                    *_status = SWITCH_STATUS_OFF;
                else
                    *_status = SWITCH_STATUS_ON;
                break;
            case SWITCH_PULL_UP :
                if(*_status == GPIO_LOGIC_LOW)
                    *_status = SWITCH_STATUS_OFF;
                else
                    *_status = SWITCH_STATUS_ON;
                break;
        }
    }
    return ret;
}