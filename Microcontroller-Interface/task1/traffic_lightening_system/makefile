CC = xc8-cc
MCPU = -mcpu=pic16f887

DIST = ./dist/default/production
FILES = ./application.c ../../mcal_layer/configuration.c ../../mcal_layer/gpio_module/gpio.c  

TARGET = $(DIST)/application.hex 

all : $(TARGET)


$(TARGET) : $(FILES)
	$(CC) $(MCPU) $^ -o $@






