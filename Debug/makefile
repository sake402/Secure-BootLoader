################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
SecureBootLoader.lss \

FLASH_IMAGE += \
SecureBootLoader.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: SecureBootLoader.elf secondary-outputs

# Tool invocations
SecureBootLoader.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-g++  -lm -lc -Wl,-Map,SecureBootLoader.map,--cref -mrelax -Wl,--gc-sections -Wl,--section-start=.text=0x3E000 -mmcu=atmega2560 -o "SecureBootLoader.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm -Wl,-section-start=.FW=0x3DF00 -Wl,-section-start=.XMEM=0x802200
	@echo 'Finished building target: $@'
	@echo ' '

SecureBootLoader.lss: SecureBootLoader.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S SecureBootLoader.elf  >"SecureBootLoader.lss"
	@echo 'Finished building: $@'
	@echo ' '

SecureBootLoader.hex: SecureBootLoader.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex SecureBootLoader.elf  "SecureBootLoader.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: SecureBootLoader.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=berkeley -t SecureBootLoader.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(S_DEPS)$(PDE_DEPS)$(LSS)$(C_DEPS)$(FLASH_IMAGE)$(CC_DEPS)$(ELFS)$(C++_DEPS)$(OBJS)$(CXX_DEPS)$(ASM_DEPS)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(CPP_DEPS) SecureBootLoader.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents

-include ../makefile.targets
