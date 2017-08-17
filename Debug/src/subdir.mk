################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/aes.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/crc.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/jedecFlash.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/main.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/mmc.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/pff.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/sdFile.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/sha1.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/spi.c \
E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/usart.c 

C_DEPS += \
./src/aes.d \
./src/crc.d \
./src/jedecFlash.d \
./src/main.d \
./src/mmc.d \
./src/pff.d \
./src/sdFile.d \
./src/sha1.d \
./src/spi.d \
./src/usart.d 

OBJS += \
./src/aes.o \
./src/crc.o \
./src/jedecFlash.o \
./src/main.o \
./src/mmc.o \
./src/pff.o \
./src/sdFile.o \
./src/sha1.o \
./src/spi.o \
./src/usart.o 


# Each subdirectory must supply rules for building sources it contributes
src/aes.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/aes.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/crc.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/crc.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/jedecFlash.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/jedecFlash.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/mmc.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/mmc.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/pff.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/pff.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sdFile.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/sdFile.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sha1.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/sha1.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/spi.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/usart.o: E:/Library/S@/CPP/Infrastructures/SecureBoot/Loader/src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


