################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/STM32F0xx_HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
PMB\ Code.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
PMB\ Code.list \

OBJCOPY_BIN += \
PMB\ Code.bin \


# All Target
all: PMB\ Code.elf secondary-outputs

# Tool invocations
PMB\ Code.elf: $(OBJS) $(USER_OBJS) /Users/nathaniasantoso/Documents/Bumblebee/AUV_4.0_PMB/PMB\ Code/STM32F072RBTX_FLASH.ld
	arm-none-eabi-gcc -o "PMB Code.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m0 -T"/Users/nathaniasantoso/Documents/Bumblebee/AUV_4.0_PMB/PMB Code/STM32F072RBTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="PMB Code.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

PMB\ Code.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "PMB Code.list"
	@echo 'Finished building: $@'
	@echo ' '

PMB\ Code.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "PMB Code.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
