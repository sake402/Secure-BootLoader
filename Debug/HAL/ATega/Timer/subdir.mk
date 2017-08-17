################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Library/S@/HALPP/ATMega/Timer/MegaMsTimer0.cpp \
E:/Library/S@/HALPP/ATMega/Timer/MegaMsTimer2.cpp 

OBJS += \
./HAL/ATMega/Timer/MegaMsTimer0.o \
./HAL/ATMega/Timer/MegaMsTimer2.o 

CPP_DEPS += \
./HAL/ATMega/Timer/MegaMsTimer0.d \
./HAL/ATMega/Timer/MegaMsTimer2.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/ATMega/Timer/MegaMsTimer0.o: E:/Library/S@/HALPP/ATMega/Timer/MegaMsTimer0.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/Timer/MegaMsTimer2.o: E:/Library/S@/HALPP/ATMega/Timer/MegaMsTimer2.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


