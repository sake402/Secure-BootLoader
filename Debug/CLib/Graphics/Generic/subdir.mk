################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Animation.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Attribute.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Box.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Color.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Create.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Cursor.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.Glyph.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.Text.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.Menu.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.TextBox.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.TrackBar.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.List.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Mask.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Pixel.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Segment.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Shift.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Transform.c \
E:/Library/S@/C/Graphics/Generic/S@Graphics.Util.c 

C_DEPS += \
./CLib/Graphics/Generic/S@Graphics.Animation.d \
./CLib/Graphics/Generic/S@Graphics.Attribute.d \
./CLib/Graphics/Generic/S@Graphics.Box.d \
./CLib/Graphics/Generic/S@Graphics.Color.d \
./CLib/Graphics/Generic/S@Graphics.Create.d \
./CLib/Graphics/Generic/S@Graphics.Cursor.d \
./CLib/Graphics/Generic/S@Graphics.Draw.Glyph.d \
./CLib/Graphics/Generic/S@Graphics.Draw.Text.d \
./CLib/Graphics/Generic/S@Graphics.Draw.d \
./CLib/Graphics/Generic/S@Graphics.GUI.Menu.d \
./CLib/Graphics/Generic/S@Graphics.GUI.TextBox.d \
./CLib/Graphics/Generic/S@Graphics.GUI.TrackBar.d \
./CLib/Graphics/Generic/S@Graphics.List.d \
./CLib/Graphics/Generic/S@Graphics.Mask.d \
./CLib/Graphics/Generic/S@Graphics.Pixel.d \
./CLib/Graphics/Generic/S@Graphics.Segment.d \
./CLib/Graphics/Generic/S@Graphics.Shift.d \
./CLib/Graphics/Generic/S@Graphics.Transform.d \
./CLib/Graphics/Generic/S@Graphics.Util.d 

OBJS += \
./CLib/Graphics/Generic/S@Graphics.Animation.o \
./CLib/Graphics/Generic/S@Graphics.Attribute.o \
./CLib/Graphics/Generic/S@Graphics.Box.o \
./CLib/Graphics/Generic/S@Graphics.Color.o \
./CLib/Graphics/Generic/S@Graphics.Create.o \
./CLib/Graphics/Generic/S@Graphics.Cursor.o \
./CLib/Graphics/Generic/S@Graphics.Draw.Glyph.o \
./CLib/Graphics/Generic/S@Graphics.Draw.Text.o \
./CLib/Graphics/Generic/S@Graphics.Draw.o \
./CLib/Graphics/Generic/S@Graphics.GUI.Menu.o \
./CLib/Graphics/Generic/S@Graphics.GUI.TextBox.o \
./CLib/Graphics/Generic/S@Graphics.GUI.TrackBar.o \
./CLib/Graphics/Generic/S@Graphics.List.o \
./CLib/Graphics/Generic/S@Graphics.Mask.o \
./CLib/Graphics/Generic/S@Graphics.Pixel.o \
./CLib/Graphics/Generic/S@Graphics.Segment.o \
./CLib/Graphics/Generic/S@Graphics.Shift.o \
./CLib/Graphics/Generic/S@Graphics.Transform.o \
./CLib/Graphics/Generic/S@Graphics.Util.o 


# Each subdirectory must supply rules for building sources it contributes
CLib/Graphics/Generic/S@Graphics.Animation.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Animation.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Animation.d" -MT"CLib/Graphics/Generic/S@Graphics.Animation.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Attribute.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Attribute.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Attribute.d" -MT"CLib/Graphics/Generic/S@Graphics.Attribute.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Box.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Box.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Box.d" -MT"CLib/Graphics/Generic/S@Graphics.Box.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Color.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Color.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Color.d" -MT"CLib/Graphics/Generic/S@Graphics.Color.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Create.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Create.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Create.d" -MT"CLib/Graphics/Generic/S@Graphics.Create.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Cursor.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Cursor.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Cursor.d" -MT"CLib/Graphics/Generic/S@Graphics.Cursor.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Draw.Glyph.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.Glyph.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Draw.Glyph.d" -MT"CLib/Graphics/Generic/S@Graphics.Draw.Glyph.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Draw.Text.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.Text.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Draw.Text.d" -MT"CLib/Graphics/Generic/S@Graphics.Draw.Text.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Draw.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Draw.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Draw.d" -MT"CLib/Graphics/Generic/S@Graphics.Draw.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.GUI.Menu.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.Menu.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.GUI.Menu.d" -MT"CLib/Graphics/Generic/S@Graphics.GUI.Menu.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.GUI.TextBox.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.TextBox.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.GUI.TextBox.d" -MT"CLib/Graphics/Generic/S@Graphics.GUI.TextBox.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.GUI.TrackBar.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.GUI.TrackBar.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.GUI.TrackBar.d" -MT"CLib/Graphics/Generic/S@Graphics.GUI.TrackBar.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.List.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.List.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.List.d" -MT"CLib/Graphics/Generic/S@Graphics.List.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Mask.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Mask.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Mask.d" -MT"CLib/Graphics/Generic/S@Graphics.Mask.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Pixel.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Pixel.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Pixel.d" -MT"CLib/Graphics/Generic/S@Graphics.Pixel.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Segment.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Segment.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Segment.d" -MT"CLib/Graphics/Generic/S@Graphics.Segment.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Shift.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Shift.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Shift.d" -MT"CLib/Graphics/Generic/S@Graphics.Shift.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Transform.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Transform.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Transform.d" -MT"CLib/Graphics/Generic/S@Graphics.Transform.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CLib/Graphics/Generic/S@Graphics.Util.o: E:/Library/S@/C/Graphics/Generic/S@Graphics.Util.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\h" -I"E:\Library\S@\h\Graphics" -I"E:\Library\S@\CPP" -I"E:\Library\S@\HALPP" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Includes" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\ForeCourt\Interface" -I"E:\Library\ChibiOS_16.1.4\os\rt\include" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\rt\ports\AVR\compilers\GCC" -I"E:\Library\ChibiOS_16.1.4\os\hal\include" -I"E:\Library\ChibiOS_16.1.4\os\hal\boards\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\ports\AVR" -I"E:\Library\ChibiOS_16.1.4\os\hal\osal\rt" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib" -I"E:\Embedded\ForeCourtAutomation\1.0\Source\PumpController\Lib\Includes" -DSPIFFS_OBJ_NAME_LEN=16 -Wall -g3 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -ffunction-sections -fdata-sections -Wno-attributes -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"CLib/Graphics/Generic/S@Graphics.Util.d" -MT"CLib/Graphics/Generic/S@Graphics.Util.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


