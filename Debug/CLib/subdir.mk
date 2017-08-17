################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Library/S@/C/Util/S@BitTwiddling.c \
E:/Library/S@/C/Data/S@CRC.c \
E:/Library/S@/C/Memory/S@FAR.c \
E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/CLib/S@Queue.c \
E:/Library/S@/C/Memory/S@ROM.c \
E:/Library/S@/C/Bindings/S@RTOS_ChibiOS_Bind.c \
E:/Library/S@/C/Util/S@TextEditor.c \
E:/Library/S@/C/Timing/S@Tick.c \
E:/Library/S@/C/Util/S@Util.c 

C_DEPS += \
./CLib/S@BitTwiddling.d \
./CLib/S@CRC.d \
./CLib/S@FAR.d \
./CLib/S@Queue.d \
./CLib/S@ROM.d \
./CLib/S@RTOS_ChibiOS_Bind.d \
./CLib/S@TextEditor.d \
./CLib/S@Tick.d \
./CLib/S@Util.d 

OBJS += \
./CLib/S@BitTwiddling.o \
./CLib/S@CRC.o \
./CLib/S@FAR.o \
./CLib/S@Queue.o \
./CLib/S@ROM.o \
./CLib/S@RTOS_ChibiOS_Bind.o \
./CLib/S@TextEditor.o \
./CLib/S@Tick.o \
./CLib/S@Util.o 


# Each subdirectory must supply rules for building sources it contributes
CLib/S@BitTwiddling.o: E:/Library/S@/C/Util/S@BitTwiddling.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@BitTwiddling.d" -MT"CLib/S@BitTwiddling.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@CRC.o: E:/Library/S@/C/Data/S@CRC.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@CRC.d" -MT"CLib/S@CRC.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@FAR.o: E:/Library/S@/C/Memory/S@FAR.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@FAR.d" -MT"CLib/S@FAR.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@Queue.o: E:/Embedded/ForeCourtAutomation/1.0/Source/ForeCourt/CLib/S@Queue.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@Queue.d" -MT"CLib/S@Queue.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@ROM.o: E:/Library/S@/C/Memory/S@ROM.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@ROM.d" -MT"CLib/S@ROM.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@RTOS_ChibiOS_Bind.o: E:/Library/S@/C/Bindings/S@RTOS_ChibiOS_Bind.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@RTOS_ChibiOS_Bind.d" -MT"CLib/S@RTOS_ChibiOS_Bind.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@TextEditor.o: E:/Library/S@/C/Util/S@TextEditor.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@TextEditor.d" -MT"CLib/S@TextEditor.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@Tick.o: E:/Library/S@/C/Timing/S@Tick.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@Tick.d" -MT"CLib/S@Tick.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/S@Util.o: E:/Library/S@/C/Util/S@Util.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/S@Util.d" -MT"CLib/S@Util.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


