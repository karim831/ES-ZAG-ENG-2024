/* 
 * File:   application.h
 * Author: karim osama
*/
#ifndef _APPLICATION_H_
#define _APPLICATION_H_
/*      section : includes                          */
#include "../../ecu_layer/dc_motor_module/dc_motor.h"
#include "../../ecu_layer/switch_module/switch.h"
/*      section : macro_declaration                 */
#define     DOOR_CLOSED         0
#define     DOOR_OPENED         1
/*      section : macro_function_declaration        */
/*      section : user_data_type_declaration        */
/*      section : function_declaration              */
void initialization(void);
STD_RETURN_TYPE application_stop_door(dc_motor_t *_motor);
STD_RETURN_TYPE application_open_door(dc_motor_t *_motor);
STD_RETURN_TYPE application_close_door(dc_motor_t *_motor);
#endif
