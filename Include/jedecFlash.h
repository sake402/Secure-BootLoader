/*
 * jedecFlash.h
 *
 *  Created on: 26 Jul 2017
 *      Author: Samson
 */

#ifndef INCLUDE_JEDECFLASH_H_
#define INCLUDE_JEDECFLASH_H_

#include <stdint.h>

void FlashInit();
void FlashDeInit();

void FlashEraseBlock(uint32_t blockAddress);
void FlashRead(uint32_t address, uint8_t* data, uint16_t dataLength);
uint16_t FlashCRC(uint32_t address, uint32_t length);



#endif /* INCLUDE_JEDECFLASH_H_ */
