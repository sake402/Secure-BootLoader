################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Library/ChibiOS_16.1.4/os/rt/ports/AVR/chcore.c 

C_DEPS += \
./CLib/ChibiOS/AVR/chcore.d 

OBJS += \
./CLib/ChibiOS/AVR/chcore.o 


# Each subdirectory must supply rules for building sources it contributes
CLib/ChibiOS/AVR/chcore.o: E:/Library/ChibiOS_16.1.4/os/rt/ports/AVR/chcore.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


