################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/BasePay.cpp \
E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/NFCPay.cpp \
E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/RingPay.cpp \
E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/VoucherPay.cpp 

OBJS += \
./Payments/BasePay.o \
./Payments/NFCPay.o \
./Payments/RingPay.o \
./Payments/VoucherPay.o 

CPP_DEPS += \
./Payments/BasePay.d \
./Payments/NFCPay.d \
./Payments/RingPay.d \
./Payments/VoucherPay.d 


# Each subdirectory must supply rules for building sources it contributes
Payments/BasePay.o: E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/BasePay.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Payments/NFCPay.o: E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/NFCPay.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Payments/RingPay.o: E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/RingPay.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Payments/VoucherPay.o: E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/Payments/VoucherPay.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -Wall -g3 -gdwarf-2 -Os -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -c -fmessage-length=0 -ffunction-sections -fdata-sections -fno-rtti -std=c++0x -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


