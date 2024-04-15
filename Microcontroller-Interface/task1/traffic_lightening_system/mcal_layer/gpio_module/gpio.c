#include "gpio.h"

volatile uint8* ports[5]  = {&PORTA,&PORTB,&PORTC,&PORTD,&PORTE};
volatile uint8* trises[5] = {&TRISA,&TRISB,&TRISC,&TRISD,&TRISE};

#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_initialize(gpio_pin_t* _gpio_pin){
    STD_RETURN_TYPE ret = E_OK;
    ret = gpio_pin_set_direction(_gpio_pin);
    if(ret)
        ret = gpio_pin_set_logic(_gpio_pin);
    return ret;
}
#endif


#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_set_direction(gpio_pin_t* _gpio_pin){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin){
        switch(_gpio_pin->direction){
            case GPIO_DIRECTION_INPUT:
                GPIO_SET_BIT(*trises[_gpio_pin->port],_gpio_pin->pin);
                break;
            case GPIO_DIRECTION_OUTPUT:
                GPIO_CLEAR_BIT(*trises[_gpio_pin->port],_gpio_pin->pin);
                break;
            default:
                ret = E_NOT_OK;
        }
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_read_direction(gpio_pin_t* _gpio_pin,uint8* _gpio_direction){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin && _gpio_direction){
        *_gpio_direction = GPIO_READ_BIT(*trises[_gpio_pin->port],_gpio_pin->pin);   
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_set_logic(gpio_pin_t* _gpio_pin){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin){
        switch(_gpio_pin->logic){
            case GPIO_LOGIC_LOW :
                GPIO_CLEAR_BIT(*ports[_gpio_pin->port],_gpio_pin->pin);
            break;
            case GPIO_LOGIC_HIGH:
                GPIO_SET_BIT(*ports[_gpio_pin->port],_gpio_pin->pin);
            break;
            default:
                ret = E_NOT_OK;
        }
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_toggle_logic(gpio_pin_t* _gpio_pin){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin){
        GPIO_TOGGLE_BIT(*ports[_gpio_pin->port],_gpio_pin->pin);
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_clear_logic(gpio_pin_t* _gpio_pin){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin){
        GPIO_CLEAR_BIT(*ports[_gpio_pin->port],_gpio_pin->pin);
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_pin_read_logic(gpio_pin_t* _gpio_pin,uint8* _gpio_logic){
    STD_RETURN_TYPE ret = E_OK;
    if(_gpio_pin && _gpio_logic){
        *_gpio_logic = GPIO_READ_BIT(*ports[_gpio_pin->port],_gpio_pin->pin);
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 

#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_initialize(uint8 gpio_port,uint8 gpio_directions,uint8 gpio_logics){
    STD_RETURN_TYPE ret = E_OK;
    ret = gpio_port_set_directions(gpio_port,gpio_directions);
    if(ret)
        ret = gpio_port_set_logics(gpio_port,gpio_logics);
    else
        ret = E_NOT_OK;
    return ret;
}
#endif
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_set_directions(uint8 gpio_port,uint8 gpio_directions){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT){
        *trises[gpio_port]=gpio_directions;
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_read_directions(uint8 gpio_port,uint8* _gpio_directions){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT && _gpio_directions){
        *_gpio_directions = *trises[gpio_port];
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_set_logics(uint8 gpio_port,uint8 gpio_logics){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT){
        *ports[gpio_port]=gpio_logics; 
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_toggle_logics(uint8 gpio_port){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT){
        GPIO_TOGGLE_REG(*ports[gpio_port]);
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_clear_logics(uint8 gpio_port){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT){
        GPIO_CLEAR_REG(*ports[gpio_port]);
    }
    else
        ret = E_NOT_OK;
    return ret;
}

#endif 
#if (GPIO_CONFIG == CONFIG_ENABLE)
STD_RETURN_TYPE gpio_port_read_logics(uint8 gpio_port,uint8* _gpio_logics){
    STD_RETURN_TYPE ret = E_OK;
    if(gpio_port >= GPIO_MIN_PORT && gpio_port <= GPIO_MAX_PORT && _gpio_logics){
        *_gpio_logics = *ports[gpio_port]; 
    }
    else
        ret = E_NOT_OK;
    return ret;
}
#endif 


