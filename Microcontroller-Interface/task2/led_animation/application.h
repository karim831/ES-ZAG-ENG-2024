/* 
 * File:   application.h
 * Author: karim osama
*/
#ifndef _APPLICATION_H_
#define	_APPLICATION_H_
/*  section : includes  */
#include "../../ecu_layer/led_module/led.h"
#include "../../ecu_layer/switch_module/switch.h"
/*  section : macros    */
#define _XTAL_FREQ  8e6
#define APPLICATION_NO_LEDS     ((uint8)0x08)
#define APPLICATION_NO_SWITCHS  ((uint8)0x02)
/*  section : function declaration  */
void application_flash_leds();
void application_shift_left_leds();
void application_shift_right_leds();
void application_converge_leds();



void initialization(void);
void build_switchs();
void build_leds();
#endif	/* APPLICATION_H */