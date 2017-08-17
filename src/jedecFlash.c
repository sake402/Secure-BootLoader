/*
 * jedecFlash.c
 *
 *  Created on: 26 Jul 2017
 *      Author: Samson
 */

#include <avr/io.h>
#include <stdlib.h>
#include <string.h>
#include "crc.h"
#include "spi.h"
#include "jedecFlash.h"

void SPIXfer3(uint32_t* data){
	SPIXfer(*data>>16);
	SPIXfer(*data>>8);
	SPIXfer(*data>>0);
}

void FlashInit(){
	DDRH |= (1<<7);
	PORTH |= (1<<7);
}

void FlashDeInit(){
	DDRH &= ~(1<<7);
	PORTH &= ~(1<<7);
}

#define Select(){ \
	PORTH &= ~(1<<7);\
}

#define Deselect(){ \
	PORTH |= (1<<7);\
}

uint8_t FlashGetStatus1() {
	Select();
	SPIXfer(0x05);
	uint8_t status = SPIXfer(0);
	Deselect();
	return status;
}

uint8_t FlashBusy() {
	return (FlashGetStatus1() & 0x01) != 0;
}

void FlashWriteEnable(){
	Select();
	SPIXfer(0x06);
	Deselect();
}

void FlashWriteDisable(){
	Select();
	SPIXfer(0x04);
	Deselect();
}

uint32_t FlashGetCapacity(){
	uint8_t flashInfo[3];
	memset(flashInfo, 0, 3);
	Select();
	SPIXfer(0x9F);
	flashInfo[0] = SPIXfer(0);
	flashInfo[1] = SPIXfer(0);
	flashInfo[2] = SPIXfer(0);
	Deselect();
	uint32_t size;
	if (flashInfo[2] != 0 && flashInfo[2] != 0xFF)
		size = ((uint32_t)1) << ((uint8_t)(flashInfo[2]));
	else
		size = (uint32_t)1 << 31;
	return size;
}

void FlashEraseBlock(uint32_t blockAddress){
	FlashWriteEnable();
	Select();
	SPIXfer(0x20);
	SPIXfer(blockAddress>>16);
	SPIXfer(blockAddress>>8);
	SPIXfer(blockAddress>>0);
	Deselect();
	while(FlashBusy());
	FlashWriteDisable();
}

void FlashRead(uint32_t address, uint8_t* data, uint16_t dataLength){
	Select();
	SPIXfer(0x03);
	SPIXfer(address>>16);
	SPIXfer(address>>8);
	SPIXfer(address>>0);
	for (uint16_t i = 0 ; i < dataLength; i++){
		data[i] = SPIXfer(0);
	}
	Deselect();
}


uint16_t FlashCRC(uint32_t address, uint32_t length){
    uint16_t crc = 0;

	Select();
	SPIXfer(0x03);
	SPIXfer(address>>16);
	SPIXfer(address>>8);
	SPIXfer(address>>0);

	for (uint32_t i = 0 ; i < length; i++){
        crc = CRC(crc, SPIXfer(0));
	}
    return crc;
}
