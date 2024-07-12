/* 
 * File:   dc_motor.h
 * Author: karim osama
*/

#ifndef _DC_MOTOR_H_
#define _DC_MOTOR_H_

/*      section : includes                      */
#include "./dc_motor_cfg.h"
/*      section : macro_declaration             */
#define DC_MOTOR_CW         0
#define DC_MOTOR_CCW        1

/*      section : macro_function_declaration    */

/*      section : user_data_type_declaraion     */

typedef struct{
    gpio_pin_t pin0;
    gpio_pin_t pin1;
}dc_motor_t;

/*      section : function_declaration          */
STD_RETURN_TYPE dc_motor_init(dc_motor_t *_dc_motor);
STD_RETURN_TYPE dc_motor_turn_cw(dc_motor_t *_dc_motor);
STD_RETURN_TYPE dc_motor_turn_ccw(dc_motor_t *_dc_motor);
#endif