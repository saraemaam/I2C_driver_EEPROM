################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../External_EEPROM_I2C.c \
../external_eeprom.c \
../gpio.c \
../twi.c 

OBJS += \
./External_EEPROM_I2C.o \
./external_eeprom.o \
./gpio.o \
./twi.o 

C_DEPS += \
./External_EEPROM_I2C.d \
./external_eeprom.d \
./gpio.d \
./twi.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


