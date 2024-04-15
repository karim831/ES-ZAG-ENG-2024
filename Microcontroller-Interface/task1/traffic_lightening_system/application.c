#include "application.h"

gpio_pin_t pin1 = {
    .port = GPIO_PORTB,
    .pin = GPIO_PIN0,
    .direction = GPIO_DIRECTION_OUTPUT,
    .logic = GPIO_LOGIC_HIGH
};

STD_RETURN_TYPE ret = E_NOT_OK;
int main(int argc, char** argv){
    initialization();
    while(1){
        pin1.pin = GPIO_PIN0;
        ret = gpio_pin_set_logic(&pin1);
        for(uint8 i=0;i<6;i++)
            __delay_ms(1e4);
        pin1.logic = GPIO_LOGIC_LOW;
        ret = gpio_pin_set_logic(&pin1);
        pin1.logic = GPIO_LOGIC_HIGH;
        
        pin1.pin = GPIO_PIN3;
        ret = gpio_pin_set_logic(&pin1);
        __delay_ms(1e4);
        pin1.logic = GPIO_LOGIC_LOW;
        ret = gpio_pin_set_logic(&pin1);
        pin1.logic = GPIO_LOGIC_HIGH;

        pin1.pin = GPIO_PIN6;
        ret = gpio_pin_set_logic(&pin1);
        for(uint8 i=0;i<6;i++)
            __delay_ms(1e4);
        pin1.logic = GPIO_LOGIC_LOW;
        ret = gpio_pin_set_logic(&pin1);
        pin1.logic = GPIO_LOGIC_HIGH;
    }
    return (EXIT_SUCCESS);
}
void initialization(void){
    ret = gpio_port_initialize(GPIO_PORTB,GPIO_EMPTY_REG,GPIO_EMPTY_REG);
}