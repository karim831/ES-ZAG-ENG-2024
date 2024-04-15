/* 
 * File:   gpio.h
 * Author: karim osama
*/
#ifndef _GPIO_H_
#define _GPIO_H_    

/*  section :   includes */
#include "../std_libraries.h"
#include "gpio_config.h"
/*  section :   macro_declarations */
#define     GPIO_MASK0              (uint8)0x01
#define     GPIO_MASK1              (uint8)0x02
#define     GPIO_MASK2              (uint8)0x04
#define     GPIO_MASK3              (uint8)0x08
#define     GPIO_MASK4              (uint8)0x10
#define     GPIO_MASK5              (uint8)0x20
#define     GPIO_MASK6              (uint8)0x40
#define     GPIO_MASK7              (uint8)0x80


#define     GPIO_EMPTY_REG          (uint8)0x00
#define     GPIO_COMPLETE_REG       (uint8)0xFF

#define     GPIO_MIN_PORT           (uint8)0x00
#define     GPIO_MAX_PORT           (uint8)0x04

#define     GPIO_MAX_PIN            (uint8)0x07
#define     GPIO_MIN_PIN            (uint8)0x01

#define     GPIO_PORTA              (uint8)0x00
#define     GPIO_PORTB              (uint8)0x01
#define     GPIO_PORTC              (uint8)0x02
#define     GPIO_PORTD              (uint8)0x03
#define     GPIO_PORTE              (uint8)0x04

#define     GPIO_PIN0               (uint8)0x00
#define     GPIO_PIN1               (uint8)0x01
#define     GPIO_PIN2               (uint8)0x02
#define     GPIO_PIN3               (uint8)0x03
#define     GPIO_PIN4               (uint8)0x04
#define     GPIO_PIN5               (uint8)0x05
#define     GPIO_PIN6               (uint8)0x06
#define     GPIO_PIN7               (uint8)0x07

#define     GPIO_DIRECTION_OUTPUT   (uint8)0x00
#define     GPIO_DIRECTION_INPUT    (uint8)0x01

#define     GPIO_LOGIC_LOW          (uint8)0x00
#define     GPIO_LOGIC_HIGH         (uint8)0x01
/*  section :   macro_function_declaration */
#define GPIO_SET_BIT(REGISTER,BIT_INDEX)    ((REGISTER)|=(GPIO_MASK0<<(BIT_INDEX)))
#define GPIO_CLEAR_BIT(REGISTER,BIT_INDEX)  ((REGISTER)&=(~(GPIO_MASK0<<(BIT_INDEX))))
#define GPIO_TOGGLE_BIT(REGISTER,BIT_INDEX) ((REGISTER)^=(GPIO_MASK0<<(BIT_INDEX)))
#define GPIO_READ_BIT(REGISTER,BIT_INDEX)   (((REGISTER)>>(BIT_INDEX))&(BIT_INDEX))

#define GPIO_CLEAR_REG(REGISTER)           ((REGISTER)&=(GPIO_EMPTY_REG))
#define GPIO_TOGGLE_REG(REGISTER)          ((REGISTER)^=(GPIO_COMPLETE_REG))
/*  section :   user_data_types_declaration */
typedef union{
    struct{
        uint8 port : 3;
        uint8 pin  : 3;
        uint8 direction: 1;
        uint8 logic : 1;
    };
    uint8 pin_description;
}gpio_pin_t;

/*  section :   user_interface_decalaration */
STD_RETURN_TYPE gpio_pin_initialize(gpio_pin_t* _gpio_pin);
STD_RETURN_TYPE gpio_pin_set_direction(gpio_pin_t* _gpio_pin);
STD_RETURN_TYPE gpio_pin_read_direction(gpio_pin_t* _gpio_pin,uint8* _gpio_direction);
STD_RETURN_TYPE gpio_pin_set_logic(gpio_pin_t* _gpio_pin);
STD_RETURN_TYPE gpio_pin_toggle_logic(gpio_pin_t* _gpio_pin);
STD_RETURN_TYPE gpio_pin_clear_logic(gpio_pin_t* _gpio_pin);
STD_RETURN_TYPE gpio_pin_read_logic(gpio_pin_t* _gpio_pin,uint8* _gpio_logic);
 
STD_RETURN_TYPE gpio_port_initialize(uint8 gpio_port,uint8 gpio_directions,uint8 gpio_logics);
STD_RETURN_TYPE gpio_port_set_directions(uint8 gpio_port,uint8 gpio_directions);
STD_RETURN_TYPE gpio_port_read_directions(uint8 gpio_port,uint8* _gpio_directions);
STD_RETURN_TYPE gpio_port_set_logics(uint8 gpio_port,uint8 gpio_logics);
STD_RETURN_TYPE gpio_port_toggle_logics(uint8 gpio_port);
STD_RETURN_TYPE gpio_port_clear_logics(uint8 gpio_port);
STD_RETURN_TYPE gpio_port_read_logics(uint8 gpio_port,uint8* _gpio_logics);


#endif