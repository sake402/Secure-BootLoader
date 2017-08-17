/*
 * spi.h
 *
 *  Created on: 31 Jul 2017
 *      Author: Samson
 */


#include <stdint.h>

void SPIInit();
void SPIDeInit();
uint8_t SPIXfer(uint8_t data);

