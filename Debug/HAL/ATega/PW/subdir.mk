################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC1APWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC1BPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC1CPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC3APWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC3BPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC3CPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC4APWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC4BPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC4CPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC5APWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC5BPWM.cpp \
E:/Library/S@/HALPP/ATMega/PWM/MegaOC5CPWM.cpp 

OBJS += \
./HAL/ATMega/PWM/MegaOC1APWM.o \
./HAL/ATMega/PWM/MegaOC1BPWM.o \
./HAL/ATMega/PWM/MegaOC1CPWM.o \
./HAL/ATMega/PWM/MegaOC3APWM.o \
./HAL/ATMega/PWM/MegaOC3BPWM.o \
./HAL/ATMega/PWM/MegaOC3CPWM.o \
./HAL/ATMega/PWM/MegaOC4APWM.o \
./HAL/ATMega/PWM/MegaOC4BPWM.o \
./HAL/ATMega/PWM/MegaOC4CPWM.o \
./HAL/ATMega/PWM/MegaOC5APWM.o \
./HAL/ATMega/PWM/MegaOC5BPWM.o \
./HAL/ATMega/PWM/MegaOC5CPWM.o 

CPP_DEPS += \
./HAL/ATMega/PWM/MegaOC1APWM.d \
./HAL/ATMega/PWM/MegaOC1BPWM.d \
./HAL/ATMega/PWM/MegaOC1CPWM.d \
./HAL/ATMega/PWM/MegaOC3APWM.d \
./HAL/ATMega/PWM/MegaOC3BPWM.d \
./HAL/ATMega/PWM/MegaOC3CPWM.d \
./HAL/ATMega/PWM/MegaOC4APWM.d \
./HAL/ATMega/PWM/MegaOC4BPWM.d \
./HAL/ATMega/PWM/MegaOC4CPWM.d \
./HAL/ATMega/PWM/MegaOC5APWM.d \
./HAL/ATMega/PWM/MegaOC5BPWM.d \
./HAL/ATMega/PWM/MegaOC5CPWM.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/ATMega/PWM/MegaOC1APWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC1APWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC1BPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC1BPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC1CPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC1CPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC3APWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC3APWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC3BPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC3BPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC3CPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC3CPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC4APWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC4APWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC4BPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC4BPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC4CPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC4CPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC5APWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC5APWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC5BPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC5BPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

HAL/ATMega/PWM/MegaOC5CPWM.o: E:/Library/S@/HALPP/ATMega/PWM/MegaOC5CPWM.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


