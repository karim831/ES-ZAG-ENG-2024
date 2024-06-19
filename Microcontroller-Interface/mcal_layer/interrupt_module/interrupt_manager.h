/* 
 * File:   interrupt_manager.h
 * Author: karim osama
*/
#ifndef _INTERRUPT_MANAGER_H_
#define _INTERRUPT_MANAGER_H_
/*  section : includes  */
#include "./interrupt_config.h"
/*  section : function declaration */
void INT_ISR(void);

void RB0_ISR(uint8 logic);
void RB1_ISR(uint8 logic);
void RB2_ISR(uint8 logic);
void RB3_ISR(uint8 logic);
void RB4_ISR(uint8 logic);
void RB5_ISR(uint8 logic);
void RB6_ISR(uint8 logic);
void RB7_ISR(uint8 logic);
#endif