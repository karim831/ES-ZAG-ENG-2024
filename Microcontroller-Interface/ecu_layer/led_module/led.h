/* 
 * File:   led.h
 * Author: karim osama
*/
#ifndef _LED_H_
#define _LED_H_
/*  section : includes */
#include "../../mcal_layer/gpio_module/gpio.h"
/*  section : user_datatype_declaration */
typedef enum{
    LED_STATUS_OFF = (uint8)0x00,
    LED_STATUS_ON
}led_status_t;
typedef struct{
    gpio_pin_t pin;
    led_status_t status;
}led_t;
/*  section : function_declaration  */
STD_RETURN_TYPE led_init(led_t* _led);
STD_RETURN_TYPE led_set_status(led_t* _led);
#endif