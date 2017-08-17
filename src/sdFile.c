/*
 * sdFile.c
 *
 *  Created on: 31 Jul 2017
 *      Author: Samson
 */

#include <stdint.h>
#include <diskio.h>
#include <pff.h>
#include "sdFile.h"

FATFS fs;

uint8_t SDInit(){
	FRESULT fr = pf_mount(&fs);
	if (fr == 0){
		fr = pf_open("upd.bin");
		if (fr == 0){
			return 1;
		}
	}
	return 0;
}

uint8_t SDRead(uint32_t address, uint8_t* data, uint16_t dataLength){
	UINT sz;
	FRESULT fr = 0;
	if (address == 0){
		fr = pf_open("upd.bin");
	}
	//no need to seek since firmware starts from zero
//	fr = pf_lseek(address);
	if (fr == 0){
		fr = pf_read(data, dataLength, &sz);
		return fr == 0;
	}
	return 0;
}
