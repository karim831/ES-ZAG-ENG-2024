CC = xc8-cc 
MCPU = -mcpu=pic16f887

MCAL = ../../mcal_layer
ECU = ../../ecu_layer
DIST = ./dist/default/production
FILES = ./application.c $(MCAL)/configuration.c $(MCAL)/gpio_module/gpio.c $(ECU)/led_module/led.c $(ECU)/switch_module/switch.c

TARGET = $(DIST)/application.hex

all : $(TARGET)

$(TARGET) : $(FILES)
	$(CC) $(MCPU) $^ -o $@ 