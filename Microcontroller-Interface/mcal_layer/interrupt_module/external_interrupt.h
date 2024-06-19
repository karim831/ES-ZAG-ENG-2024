/* 
 * File:   external_interrupt.h
 * Author: karim osama
*/

#ifndef _EXTERNAL_INTERRUPT_H_
#define _EXTERNAL_INTERRUPT_H_

/*  section : includes  */
#include "interrupt_config.h"
 
/*  section : macro declaration */
#define     RB_INTERRUPTS_NUMBER            (uint8)0x08
#define     RB_INTERRUPT_HANDLERS_NUMBER    (uint8)0x02
#define     RB0                             (uint8)0x00
#define     RB1                             (uint8)0x01
#define     RB2                             (uint8)0x02
#define     RB3                             (uint8)0x03
#define     RB4                             (uint8)0x04
#define     RB5                             (uint8)0x05
#define     RB6                             (uint8)0x06
#define     RB7                             (uint8)0x07

/*  section : macro function declaration    */
/*  section : external interrupt_int_enable */
#if (EXTERNAL_INTERRUPT_INT_ENABLE == INTERRUPT_FEATURE_ENABLE)
#define EX_INTERRUPT_INTF_CLEAR()          (INTCONbits.INTF = (uint8)0x00)

#define EX_INTERRUPT_INTE_DISALBE()        (INTCONbits.INTE = (uint8)0x00)
#define EX_INTERRUPT_INTE_ENABLE()         (INTCONbits.INTE = (uint8)0x01)  

#define EX_INTERRUPT_INTEDG_RISING()       (OPTION_REGbits.INTEDG = (uint8)0x01) 
#define EX_INTERRUPT_INTEDG_FALLING()      (OPTION_REGbits.INTEDG = (uint8)0x00)
#endif
/*  section : external interrupt on change enable */
#if (EXTERNAL_INTERRUPT_RB_ENABLE == INTERRUPT_FEATURE_ENABLE)
#define EX_INTERRUPT_RBIF_CLEAR()         (INTCONbits.RBIF = (uint8)0x00)  

#define EX_INTERRUPT_RBIE_DISABLE()       (INTCONbits.RBIE = (uint8)0x00)
#define EX_INTERRUPT_RBIE_ENABLE()        (INTCONbits.RBIE = (uint8)0x01)

#define EX_INTERRUPT_IOCPX_ENABLE(RBX)    (GPIO_SET_BIT(IOCB,RBX))
#define EX_INTERRUPT_IOCPX_DISABLE(RBX)   (GPIO_CLEAR_BIT(IOCB,RBX))

#endif 
/*  section : user data type declration */
typedef enum{
    EX_INTERRUPT_INT_FALLING_EDGE = (uint8)0x00,
    EX_INTERRUPT_INT_RISING_EDGE
}ex_interrupt_INT_edge_t;
typedef struct{
    void (*interrupt_handler)(void);
    ex_interrupt_INT_edge_t edge;
}ex_interrupt_INT_t;

typedef struct{
    void (*interrupt_handler_low)(void);
    void (*interrupt_handler_high)(void);
    uint8 RBx;
}ex_interrupt_RBx_t;
/*  section : function declaration  */
STD_RETURN_TYPE ex_interrupt_INT_init(const ex_interrupt_INT_t *const _INT);
STD_RETURN_TYPE ex_interrupt_INT_deinit(const ex_interrupt_INT_t *const _INT);

STD_RETURN_TYPE ex_interrupt_RB_init(void);
STD_RETURN_TYPE ex_interrupt_RB_deinit(void);
STD_RETURN_TYPE ex_interrupt_RBx_init(const ex_interrupt_RBx_t *const _RBx);
STD_RETURN_TYPE ex_interrupt_RBx_deinit(const ex_interrupt_RBx_t *const _RBx);

#endif