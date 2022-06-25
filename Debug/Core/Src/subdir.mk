################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/board_support.c \
../Core/Src/main.c \
../Core/Src/system_stm32f3xx.c 

OBJS += \
./Core/Src/board_support.o \
./Core/Src/main.o \
./Core/Src/system_stm32f3xx.o 

C_DEPS += \
./Core/Src/board_support.d \
./Core/Src/main.d \
./Core/Src/system_stm32f3xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F303xC -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/board_support.d ./Core/Src/board_support.o ./Core/Src/board_support.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/system_stm32f3xx.d ./Core/Src/system_stm32f3xx.o ./Core/Src/system_stm32f3xx.su

.PHONY: clean-Core-2f-Src

