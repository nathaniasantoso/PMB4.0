################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Startup/startup_stm32f072rbtx.S 

OBJS += \
./Startup/startup_stm32f072rbtx.o 

S_UPPER_DEPS += \
./Startup/startup_stm32f072rbtx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/startup_stm32f072rbtx.o: ../Startup/startup_stm32f072rbtx.S
	arm-none-eabi-gcc -mcpu=cortex-m0 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Startup/startup_stm32f072rbtx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

