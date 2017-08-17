/*
 * sdFile.h
 *
 *  Created on: 31 Jul 2017
 *      Author: Samson
 */

#ifndef INCLUDE_SDFILE_H_
#define INCLUDE_SDFILE_H_


uint8_t SDInit();
uint8_t SDRead(uint32_t address, uint8_t* data, uint16_t dataLength);


#endif /* INCLUDE_SDFILE_H_ */
