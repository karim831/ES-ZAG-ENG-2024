/* 
 * File:   external_interrupt.c
 * Author: karim osama
*/

#include "external_interrupt.h"
static void (*INT_interrupt_handler) (void) = NULL;

static void (*RBx_interrupt_handlers[RB_INTERRUPTS_NUMBER][RB_INTERRUPT_HANDLERS_NUMBER]) (void) = {{NULL}};

static void ex_interrupt_INT_set_interrupt_handler(void (* const interrupt_handler) (void));
static void ex_interrupt_INT_enable(void);
static void ex_interrupt_INT_disable(void);
static void ex_interrupt_INT_set_direction(void);
static void ex_interrupt_INT_set_edge(const ex_interrupt_INT_edge_t edge);
static void ex_interrupt_INT_clear_flag(void);


static void ex_interrupt_RB_clear_flag(void);
static void ex_interrupt_RB_enable(void);
static void ex_interrupt_RB_disable(void);
static void ex_interrupt_RBx_disable(const ex_interrupt_RBx_t *const _RBx);
static void ex_interrupt_RBx_set_direction(const ex_interrupt_RBx_t *const _RBx);
static void ex_interrupt_RBx_set_interrupt_handler(const ex_interrupt_RBx_t *const _RBx);
static void ex_interrupt_RBx_enable(const ex_interrupt_RBx_t *const _RBx);











#if (EXTERNAL_INTERRUPT_INT_ENABLE == INTERRUPT_FEATURE_ENABLE)

    STD_RETURN_TYPE ex_interrupt_INT_init(const ex_interrupt_INT_t* const _INT){
        STD_RETURN_TYPE ret = E_OK;
        if(!_INT)
            ret = E_NOT_OK;
        else{
            ex_interrupt_INT_disable();
            ex_interrupt_INT_clear_flag();
            ex_interrupt_INT_set_edge(_INT->edge);
            ex_interrupt_INT_set_direction();
            ex_interrupt_INT_set_interrupt_handler(_INT->interrupt_handler);
            ex_interrupt_INT_enable();
        }
        return ret;
    }
    STD_RETURN_TYPE ex_interrupt_INT_deinit(const ex_interrupt_INT_t* const _INT){
        STD_RETURN_TYPE ret = E_OK;
        if(!_INT)
            ret = E_NOT_OK;
        else
            ex_interrupt_INT_disable();
        return ret;
    }

    static void ex_interrupt_INT_clear_flag(void){
        EX_INTERRUPT_INTF_CLEAR();
    }
    static void ex_interrupt_INT_set_direction(void){
        gpio_pin_t pin = {
            .port = GPIO_PORTB,
            .pin = GPIO_PIN0,
            .direction = GPIO_DIRECTION_INPUT
        };
        gpio_pin_set_direction(&pin);
    }
    static void ex_interrupt_INT_set_edge(const ex_interrupt_INT_edge_t edge){
        switch(edge){
            case EX_INTERRUPT_INT_FALLING_EDGE:
                EX_INTERRUPT_INTEDG_FALLING();
                break;
            case EX_INTERRUPT_INT_RISING_EDGE:
                EX_INTERRUPT_INTEDG_RISING();
                break;
        }
    }
    static void ex_interrupt_INT_enable(void){
        INTERRUPT_GIE_ENABLE();
        EX_INTERRUPT_INTE_ENABLE();
    }

    static void ex_interrupt_INT_disable(void){
        EX_INTERRUPT_INTE_DISALBE();
    }

    static void ex_interrupt_INT_set_interrupt_handler(void (*const interrupt_handler) (void)){
        INT_interrupt_handler = interrupt_handler;
    }

    void INT_ISR(void){
        EX_INTERRUPT_INTF_CLEAR();


        if(INT_interrupt_handler)
            INT_interrupt_handler();
    }  

#endif

#if(EXTERNAL_INTERRUPT_RB_ENABLE == INTERRUPT_FEATURE_ENABLE)
    STD_RETURN_TYPE ex_interrupt_RB_init(void){
        STD_RETURN_TYPE ret = E_OK;
        ex_interrupt_RB_clear_flag();
        ex_interrupt_RB_enable();
        return ret;
    }
    STD_RETURN_TYPE ex_interrupt_RB_deinit(void){
        STD_RETURN_TYPE ret = E_OK;
        ex_interrupt_RB_disable();
        ex_interrupt_RB_clear_flag();
        return ret;
    }

    STD_RETURN_TYPE ex_interrupt_RBx_init(const ex_interrupt_RBx_t *const _RBx){
        STD_RETURN_TYPE ret = E_NOT_OK;
        if(!_RBx)
            ret = E_NOT_OK;
        else{
            ex_interrupt_RBx_disable(_RBx);
            ex_interrupt_RBx_set_direction(_RBx);
            ex_interrupt_RBx_set_interrupt_handler(_RBx);
            ex_interrupt_RBx_enable(_RBx);
        }
        return ret;
    }

    STD_RETURN_TYPE ex_interrupt_RBx_deinit(const ex_interrupt_RBx_t *const _RBx){
        STD_RETURN_TYPE ret = E_OK;
        if(!_RBx)
            ret = E_NOT_OK;
        else{
            
            ex_interrupt_RBx_disable(_RBx);
        }
        return ret;
    }

    static void ex_interrupt_RB_clear_flag(void){
        EX_INTERRUPT_RBIF_CLEAR();
    }
    static void ex_interrupt_RB_disable(void){
        EX_INTERRUPT_RBIE_DISABLE();
    }
    static void ex_interrupt_RB_enable(void){
        EX_INTERRUPT_RBIE_ENABLE();   
    }
    static void ex_interrupt_RBx_disable(const ex_interrupt_RBx_t *const _RBx){
        EX_INTERRUPT_IOCPX_DISABLE(_RBx->RBx);
    }
    static void ex_interrupt_RBx_set_direction(const ex_interrupt_RBx_t *const _RBx){
        gpio_pin_t pin = {
            .port = GPIO_PORTB,
            .pin = _RBx->RBx,
            .direction = GPIO_DIRECTION_INPUT
        };
        gpio_pin_set_direction(&pin);
    }
    static void ex_interrupt_RBx_set_interrupt_handler(const ex_interrupt_RBx_t *const _RBx){
        RBx_interrupt_handlers[_RBx->RBx][0] = _RBx->interrupt_handler_low;
        RBx_interrupt_handlers[_RBx->RBx][1] = _RBx->interrupt_handler_high;
    }
    
    static void ex_interrupt_RBx_enable(const ex_interrupt_RBx_t *const _RBx){
        INTERRUPT_GIE_ENABLE();
        EX_INTERRUPT_RBIE_ENABLE();
        EX_INTERRUPT_IOCPX_ENABLE(_RBx->RBx);
    }



    void RB0_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[0][0])
                RBx_interrupt_handlers[0][0]();
        }
        else{
            if(RBx_interrupt_handlers[0][1])
                RBx_interrupt_handlers[0][1]();
        }
    }
    void RB1_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[1][0])
                RBx_interrupt_handlers[1][0]();
        }
        else{
            if(RBx_interrupt_handlers[1][1])
                RBx_interrupt_handlers[1][1]();
        }
    }
    void RB2_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[2][0])
                RBx_interrupt_handlers[2][0]();
        }
        else{
            if(RBx_interrupt_handlers[2][1])
                RBx_interrupt_handlers[2][1]();
        }
    }
    void RB3_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[3][0])
                RBx_interrupt_handlers[3][0]();
        }
        else{
            if(RBx_interrupt_handlers[3][1])
                RBx_interrupt_handlers[3][1]();
        }
    }
    void RB4_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[4][0])
                RBx_interrupt_handlers[4][0]();
        }
        else{
            if(RBx_interrupt_handlers[4][1])
                RBx_interrupt_handlers[4][1]();
        }
    }
    void RB5_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[5][0])
                RBx_interrupt_handlers[5][0]();
        }
        else{
            if(RBx_interrupt_handlers[5][1])
                RBx_interrupt_handlers[5][1]();
        }
    }
    void RB6_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[6][0])
                RBx_interrupt_handlers[6][0]();
        }
        else{
            if(RBx_interrupt_handlers[6][1])
                RBx_interrupt_handlers[6][1]();
        }
    }
    void RB7_ISR(uint8 logic){
        ex_interrupt_RB_clear_flag();
        if(!logic){
            if(RBx_interrupt_handlers[7][0])
                RBx_interrupt_handlers[7][0]();
        }
        else{
            if(RBx_interrupt_handlers[7][1])
                RBx_interrupt_handlers[7][1]();
        }
    }
#endif