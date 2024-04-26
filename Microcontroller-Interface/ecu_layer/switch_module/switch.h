/* 
 * File:   switch.h
 * Author: karim osama
*/
#ifndef _SWITCH_H_
#define _SWITCH_H_  
/*  section : includes  */
#include "../../mcal_layer/gpio_module/gpio.h"
/*  section : macro_declaration */
#define     SWITCH_STATUS_OFF    (uint8)0x00
#define     SWITCH_STATUS_ON     (uint8)0x01

/*  section : user_datatype_declaration*/
typedef enum{
    SWITCH_PULL_DOWN = (uint8)0x00,
    SWITCH_PULL_UP
}switch_op_t;
typedef struct{
    gpio_pin_t pin;
    switch_op_t op;
}switch_t;
/* section : function_declaration*/
STD_RETURN_TYPE switch_init(switch_t* switch_obj);
STD_RETURN_TYPE switch_read_status(switch_t* switch_obj,uint8* _status);
#endif