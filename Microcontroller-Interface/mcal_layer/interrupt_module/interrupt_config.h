/* 
 * File:   interrupt_config.h
 * Author: karim osama
*/

#ifndef _INTERRUPT_CONFIG_H_
#define _INTERRUPT_CONFIG_H_

/*  section : includes  */
#include "../std_libraries.h"
#include "../gpio_module/gpio.h"
/*  section : macro declaration */
#define INTERRUPT_FEATURE_DISABLE               0
#define INTERRUPT_FEATURE_ENABLE                1

#define INTERRUPT_DISABLE                       0    
#define INTERRUPT_ENABLE                        1
#define INTERRUPT_NOT_OCCURRED                  0
#define INTERRUPT_OCCURRED                      1

#define EXTERNAL_INTERRUPT_INT_ENABLE           INTERRUPT_FEATURE_ENABLE 
#define EXTERNAL_INTERRUPT_RB_ENABLE            INTERRUPT_FEATURE_ENABLE


/*  section : macro function declaration    */
#define INTERRUPT_GIE_READ()                    (INTCONbits.GIE)
#define INTERRUPT_GIE_DISABLE()                 (INTCONbits.GIE  = (uint8)0x00)
#define INTERRUPT_GIE_ENABLE()                  (INTCONbits.GIE  = (uint8)0x01)

#define INTERUPT_PIE_READ()                     (INTCONbits.PEIE)
#define INTERRUPT_PEIE_DISABLE()                (INTCONbits.PEIE = (uint8)0x00)
#define INTERRUPT_PEIE_ENABLE()                 (INTCONbits.PEIE = (uint8)0x01)

#endif