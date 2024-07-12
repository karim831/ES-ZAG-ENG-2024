/* 
 * File:   application.c
 * Author: karim osama
*/

#include "./application.h"
gpio_pin_t push_button_pin = {
    .port = GPIO_PORTC,
    .pin = GPIO_PIN0,
    .direction = GPIO_DIRECTION_INPUT
},
limit_switch_pin = {
    .port = GPIO_PORTC,
    .pin = GPIO_PIN1,
    .direction = GPIO_DIRECTION_INPUT
},
dc_motor_pin0 = {
    .port = GPIO_PORTC,
    .pin = GPIO_PIN6,
    .direction = GPIO_DIRECTION_OUTPUT
},
dc_motor_pin1 = {
    .port = GPIO_PORTC,
    .pin = GPIO_PIN7,
    .direction = GPIO_DIRECTION_OUTPUT
};

switch_t push_button,limit_switch;
dc_motor_t dc_motor;

uint8 push_button_status,limit_switch_status;

STD_RETURN_TYPE ret = E_NOT_OK;
int main(int argc,char *argv[]){
    initialization();
    while(1){
        do{
            ret = switch_read_status(&push_button,&push_button_status);
        }while(push_button_status == SWITCH_STATUS_OFF);
        push_button_status = SWITCH_STATUS_OFF;
        ret = switch_read_status(&limit_switch,&limit_switch_status);
        if(limit_switch_status == DOOR_CLOSED)
            ret = application_open_door(&dc_motor);
        else
            ret = application_close_door(&dc_motor);
        uint8 tmp = limit_switch_status;
        do{
            ret = switch_read_status(&limit_switch,&limit_switch_status);
        }while(limit_switch_status == tmp);
        
        ret = application_stop_door(&dc_motor);

    }
    return (EXIT_SUCCESS);
}

void initialization(void){
    push_button.pin = push_button_pin;
    push_button.op = SWITCH_PULL_UP;

    limit_switch.pin = limit_switch_pin;
    limit_switch.op = SWITCH_PULL_UP;

    dc_motor.pin0 = dc_motor_pin0;
    dc_motor.pin1 = dc_motor_pin1;

    ret = switch_init(&push_button);
    ret = switch_init(&limit_switch);

    ret = dc_motor_init(&dc_motor);

    push_button_status =  SWITCH_STATUS_OFF;
    limit_switch_status = DOOR_CLOSED;
}


STD_RETURN_TYPE application_stop_door(dc_motor_t *_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_motor)
        ret = E_NOT_OK;
    else{
        dc_motor_stop(_motor);
    }
    return ret;
}
STD_RETURN_TYPE application_open_door(dc_motor_t *_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_motor)
        ret = E_NOT_OK;
    else{
        dc_motor_turn_ccw(_motor);   
    }
    return ret;
}
STD_RETURN_TYPE application_close_door(dc_motor_t *_motor){
    STD_RETURN_TYPE ret = E_OK;
    if(!_motor)
        ret = E_NOT_OK;
    else{
        dc_motor_turn_cw(_motor);
    }
    return ret;
}   