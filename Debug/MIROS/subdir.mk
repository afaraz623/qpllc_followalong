################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MIROS/miros.c 

OBJS += \
./MIROS/miros.o 

C_DEPS += \
./MIROS/miros.d 


# Each subdirectory must supply rules for building sources it contributes
MIROS/%.o MIROS/%.su: ../MIROS/%.c MIROS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F303xC -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../MIROS/ -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MIROS

clean-MIROS:
	-$(RM) ./MIROS/miros.d ./MIROS/miros.o ./MIROS/miros.su

.PHONY: clean-MIROS

