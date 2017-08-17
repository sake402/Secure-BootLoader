################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/aes.c \
../src/crc.c \
../src/jedecFlash.c \
../src/main.c \
../src/mmc.c \
../src/pff.c \
../src/sdFile.c \
../src/sha1.c \
../src/spi.c \
../src/usart.c 

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
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"E:\Library\S@\CPP\Infrastructures\SecureBoot\Loader\Include" -DBAUD=115200 -Wall -g2 -gdwarf-2 -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -c -fmessage-length=0 -std=gnu99 -mmcu=atmega2560 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


