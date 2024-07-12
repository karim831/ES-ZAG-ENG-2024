CC = xc8-cc
MCPU = -mcpu=pic16f887

MCAL  = \
../../mcal_layer/configuration.c\
../../mcal_layer/gpio_module/gpio.c\

ECU = \
../../ecu_layer/switch_module/switch.c\
../../ecu_layer/dc_motor_module/dc_motor.c


APPLICATION = ./application.c

TARGET = ./dist/default/production/application.hex


all : $(TARGET)


$(TARGET) : $(APPLICATION) $(MCAL) $(ECU)
	$(CC) $(MCPU) $^ -o $@