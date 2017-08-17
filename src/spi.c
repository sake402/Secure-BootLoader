/*
 * spi.c
 *
 *  Created on: 31 Jul 2017
 *      Author: Samson
 */


#include <avr/io.h>

void SPIInit(){
	DDRB = 0b000111;
//	DDRB &= ~(1<<3);
//	PORTB &= ~(1<<3);
	PORTB = (1<<0);
	SPSR = 1;
	SPCR = (1<<SPE)|(1<<MSTR);//0b01010000;
}

void SPIDeInit(){
	DDRB = 0;
	PORTB = 0;
	SPSR = 0;
	SPCR = 0;
}

uint8_t SPIXfer(uint8_t data){
//	uint16_t timeOut = 0xFFFF;
	SPDR = data;
	while ((SPSR & _BV(SPIF)) == 0);
//	&& --timeOut);
//	SPSR |= _BV(SPIF);
	data = SPDR;
	return data;
}
