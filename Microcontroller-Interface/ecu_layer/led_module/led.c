/* 
 * File:   led.c
 * Author: karim osama
*/

#include "./led.h"
STD_RETURN_TYPE led_init(led_t* _led){
    STD_RETURN_TYPE ret = E_OK;
    if(!_led)
        ret = E_NOT_OK;
    else{
        ret = gpio_pin_set_direction(&_led->pin);
        if(ret)
            ret = led_set_status(_led);
    }
    return ret;
}   
STD_RETURN_TYPE led_set_status(led_t* _led){
    STD_RETURN_TYPE ret = E_OK;
    if(!_led)
        ret = E_NOT_OK;
    else{
        switch(_led->status){
            case LED_STATUS_OFF :
                _led->pin.logic = GPIO_LOGIC_LOW;
                ret = gpio_pin_set_logic(&_led->pin);
                break;
            case LED_STATUS_ON :
                _led->pin.logic = GPIO_LOGIC_HIGH;
                ret = gpio_pin_set_logic(&_led->pin);
                break;
            default :
                ret = E_NOT_OK;
        }
    }
    return ret;
}
