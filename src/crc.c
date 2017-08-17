/*
 * crc.c
 *
 *  Created on: 3 Aug 2017
 *      Author: Samson
 */




#include <crc.h>
#include <stdint.h>

uint16_t CRC(uint16_t crc, uint8_t ch){
	for (uint8_t i = 0; i < 8; i++) {
		if ((crc ^ ch) & 1)
			crc = (crc >> 1) ^ 0xA001;
		else
			crc >>= 1;
		ch >>= 1;
	}
	return crc;
}

