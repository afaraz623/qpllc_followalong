################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Startup/startup_stm32f303vctx.c 

OBJS += \
./Core/Startup/startup_stm32f303vctx.o 

C_DEPS += \
./Core/Startup/startup_stm32f303vctx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o Core/Startup/%.su: ../Core/Startup/%.c Core/Startup/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F303xC -c -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32f303vctx.d ./Core/Startup/startup_stm32f303vctx.o ./Core/Startup/startup_stm32f303vctx.su

.PHONY: clean-Core-2f-Startup

