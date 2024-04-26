/* 
 * File:   application.h
 * Author: karim osama
*/
#include "./application.h"

led_t leds[APPLICATION_NO_LEDS];
switch_t switchs[APPLICATION_NO_SWITCHS];
uint8 status0 = LOW;
uint8 status1 = LOW;
STD_RETURN_TYPE ret = E_NOT_OK;


int main(int argc ,char** argv){
    initialization();
    while(1){
        ret = switch_read_status(&switchs[0],&status0);
        ret = switch_read_status(&switchs[1],&status1);
        if(!status1 && !status0){
            application_flash_leds();
        }
        else if(!status1 && status0){
            application_shift_left_leds();
        }
        else if(status1 && !status0){
            application_shift_right_leds();
        }
        else{
            application_converge_leds();
        }
    }
    return (EXIT_SUCCESS);
}

void application_flash_leds(){
    for(uint8 i=0;i<2;i++){
        for(uint8 j=0;j<APPLICATION_NO_LEDS;j++){
            ret = switch_read_status(&switchs[0],&status0);
            ret = switch_read_status(&switchs[1],&status1);
            if(!(!status0 && !status1))
                break;
            if(!i){
                leds[j].status = LED_STATUS_ON;
                ret = led_set_status(leds+j);
            }
            else{
                leds[j].status = LED_STATUS_OFF;
                ret = led_set_status(leds+j);
            }
        }
        __delay_ms(500);
    }
}
void application_shift_left_leds(){
    for(sint8 i=APPLICATION_NO_LEDS-1;i>=0;i--){
        ret = switch_read_status(&switchs[0],&status0);
        ret = switch_read_status(&switchs[1],&status1);
        if(!(!status1 && status0))
            break;
        leds[i].status = LED_STATUS_ON;
        ret = led_set_status(leds+i);
        leds[i].status = LED_STATUS_OFF;
        __delay_ms(250);
        ret = led_set_status(leds+i);
    }
}
void application_shift_right_leds(){
    for(uint8 i=0;i<APPLICATION_NO_LEDS;i++){
        ret = switch_read_status(&switchs[0],&status0);
        ret = switch_read_status(&switchs[1],&status1);
        if(!(status1 && !status0))
            break;
        leds[i].status = LED_STATUS_ON;
        ret = led_set_status(leds+i);
        leds[i].status = LED_STATUS_OFF;
        __delay_ms(250);
        ret = led_set_status(leds+i);
    }
}
void application_converge_leds(){
    for(uint8 i=0,j=APPLICATION_NO_LEDS-1;i<j;i++,j--){
        ret = switch_read_status(&switchs[0],&status0);
        ret = switch_read_status(&switchs[1],&status1);
        if(!(status1 && status0))
            break;
        leds[i].status = LED_STATUS_ON;
        leds[j].status = LED_STATUS_ON;
        ret = led_set_status(leds+i);
        ret = led_set_status(leds+j);
        leds[i].status = LED_STATUS_OFF;
        leds[j].status = LED_STATUS_OFF;
        __delay_ms(300);
        ret = led_set_status(leds+i);
        ret = led_set_status(leds+j); 
    }
}


void initialization(void){
    build_switchs();
    build_leds();
    for(uint8 i=0;i<APPLICATION_NO_LEDS;i++){
        if(i<APPLICATION_NO_SWITCHS)
            ret = switch_init(switchs+i);
        ret = led_init(leds+i);
    }
}
void build_switchs(){
    gpio_pin_t pin_tmp;
    for(uint8 i=0;i<APPLICATION_NO_SWITCHS;i++){
        pin_tmp.port = GPIO_PORTC;
        pin_tmp.pin = i;
        pin_tmp.direction = GPIO_DIRECTION_INPUT;
        
        switchs[i].pin = pin_tmp;
        switchs[i].op = SWITCH_PULL_UP;
    }
}
void build_leds(){
    gpio_pin_t pin_tmp;
    for(uint8 i=0;i<APPLICATION_NO_LEDS;i++){
        pin_tmp.port = GPIO_PORTB;
        pin_tmp.pin = i;
        pin_tmp.direction = GPIO_DIRECTION_OUTPUT;
        
        leds[i].pin = pin_tmp;
        leds[i].status = LED_STATUS_OFF;
    }
}