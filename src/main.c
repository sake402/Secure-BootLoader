
#include <string.h>
#include <stdlib.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/boot.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <usart.h>
#include "loader.h"
#include "crc.h"
#include "aes.h"
#include "spi.h"
#include "jedecFlash.h"
#include "sdFile.h"
#include "sha1.h"

const uint16_t flashEraseBlockSize = 4096;
const uint16_t flashOffset = 4096;
const uint32_t fileIDAddress = 0;
const uint32_t fileIDSize = 16;
const uint32_t signatureAddress = 16;
const uint32_t signatureSize = 20;
const uint32_t aesIvAddress = 256-16;
const uint32_t aesIVSize = 16;
const uint32_t firmwareAddress = 256;
const uint32_t firmwareSize = 256L*1024 - 8192;//remove the bootloader segment

#define BUFFER_SIZE  256//1024//256//2048

#define MAJOR_VERSION_NUMBER "01"
#define MINOR_VERSION_NUMBER "00"

//data dataSource
uint8_t dataSource;

uint8_t Read(uint32_t address, uint8_t* data, uint16_t dataLength){
	switch (dataSource){
	case 'F':
		FlashRead(address+flashOffset, data, dataLength);
		return 1;
	case 'U':
		return UartRead(address, data, dataLength);
	case 'M':
		return SDRead(address, data, dataLength);
	}
	return 0;
}

void boot_program_page (uint32_t page, uint8_t *buf){
   uint16_t i;
   boot_page_erase (page);
   boot_spm_busy_wait ();      // Wait until the memory is erased.
   for (i=0; i<SPM_PAGESIZE; i+=2, buf+=2)
   {
	   uint16_t w = *(uint16_t*)buf;
//	   w += (*buf++) << 8;
	   boot_page_fill (i, w);
   }
   boot_page_write (page);     // Store buffer in flash page.
   boot_spm_busy_wait();       // Wait until the memory is written.
   boot_rww_enable ();
}

void BootLoader(){
	uint8_t buffer[BUFFER_SIZE];
	dataSource = 0;
	SPIInit();
	UartInit();
	FlashInit();
	if (UartRead(0xFFFFFFFF, &dataSource, 1)){ //Bootloader Connects
		if (dataSource == 0xFF){
			dataSource = 'U';
		}
	}
	if (dataSource == 0){
		if (SDInit()){
			dataSource = 'M';
		}
	}
	if (dataSource == 0){
		dataSource = 'F';
//		FlashRead(flashOffset, buffer, BUFFER_SIZE);
//		if (buffer[0] == 's' && buffer[1] == 'b'){
//			dataSource = 'F';
//		}
	}

	if (dataSource != 0){
		do{
			uint8_t aes_iv[16];
			uint8_t aes_key[32] = {
					0xFE, 0x0D, 0xED, 0x05, 0x35, 0xAF, 0xD0, 0x9B,
					0x9B, 0x58, 0x0F, 0x3E, 0x30, 0xAC, 0xFB, 0x0D,
					0xBF, 0x8F, 0x6C, 0x55, 0xDA, 0x79, 0xD6, 0x74,
					0x91, 0xCC, 0x2F, 0xF5, 0x7F, 0x56, 0xFE, 0x75
			};

			Read(fileIDAddress, buffer, fileIDSize);
			if (buffer[0] != 's' || buffer[1] != 'b'){
				if (dataSource == 'U')
					UartRead(0xFFFFFFFE, NULL, 0);			//Invalid file loaded
				break;
			}

//			if (strcmp(&buffer[2], MAJOR_VERSION_NUMBER MINOR_VERSION_NUMBER) == 0){
			if (buffer[2] != MAJOR_VERSION_NUMBER[0] || buffer[3] != MAJOR_VERSION_NUMBER[1] || buffer[4] != MINOR_VERSION_NUMBER[0] || buffer[5] != MINOR_VERSION_NUMBER[1]){
				if (dataSource == 'U')
					UartRead(0xFFFFFFFD, NULL, 0);			//Invalid file version
				break;
			}

//			uint16_t firmwareVersion = 1000*(buffer[6]-'0')+100*(buffer[7]-'0')+10*(buffer[8]-'0')+1*(buffer[9]-'0');
//			uint8_t i = 6;
//			while(i < 8){
//				firmwareVersion*=10;
//				firmwareVersion+=buffer[i++]-'0';
//			}

			if (dataSource == 'U')
				UartRead(0xFFFFFFFC, NULL, 0); //Validating firmware

			Read(aesIvAddress, aes_iv, aesIVSize);

//			uint8_t shaPassed = 1;
			SHA1_CTX sha1;
			sha1_init(&sha1);
			sha1_update(&sha1, aes_key, sizeof(aes_key));
			sha1_update(&sha1, aes_iv, aesIVSize);
			for (uint32_t p = 0; p < firmwareSize; p+=BUFFER_SIZE){
				PORTE ^= (1 << 2);
				if (Read(firmwareAddress+p, buffer, BUFFER_SIZE) == 0){
//					shaPassed = 0;
					break;
				}
				sha1_update(&sha1, buffer, BUFFER_SIZE);
			}

//			if (!shaPassed){
//				if (dataSource == 'U')
//					UartRead(0xFFFFFFFB, NULL, 0); //Validation Failed
//				break;
//			}

			uint8_t hash[20];
			sha1_final(&sha1, hash);
			Read(signatureAddress, buffer, 20);
			if (memcmp(buffer, hash, 20) != 0){
				if (dataSource == 'U')
					UartRead(0xFFFFFFFB, NULL, 0); //Validation Failed
				break;
			}

			if (dataSource == 'U')
				UartRead(0xFFFFFFFA, NULL, 0);//Installing Firmware

			uint16_t crc = 0;

			uint8_t success = 1;
			for (uint32_t ptr = 0; ptr < firmwareSize; ptr += BUFFER_SIZE)
			{
					PORTE ^= (1 << 2);
					uint8_t cipher[BUFFER_SIZE];
					if (Read(firmwareAddress+ptr, cipher, BUFFER_SIZE) == 0){
						success = 0;
						break;
					}
					AES_CBC_decrypt_buffer(buffer, cipher, BUFFER_SIZE, aes_key, aes_iv);
					memcpy(aes_iv, &cipher[BUFFER_SIZE-16], 16);
					uint16_t i = 0;
					uint8_t isLast = !(ptr < firmwareSize - BUFFER_SIZE);
					while(i < (isLast ? BUFFER_SIZE-4 : BUFFER_SIZE))
						crc = CRC(crc, buffer[i++]);
					// if it's the last page, replace with CRC and firmwareVersion
					if (isLast){
						//no version info in compilation, Insert from binary header
//						if (buffer[BUFFER_SIZE-4] == 0xFF && buffer[BUFFER_SIZE-3] == 0xFF){
//							*(uint16_t*)&buffer[BUFFER_SIZE-4] = firmwareVersion;
//							buffer[BUFFER_SIZE-4] = firmwareVersion;
//							buffer[BUFFER_SIZE-3] = firmwareVersion>>8;
//						}
						crc = CRC(crc, buffer[BUFFER_SIZE-4]);
						crc = CRC(crc, buffer[BUFFER_SIZE-3]);
						*(uint16_t*)&buffer[BUFFER_SIZE-2] = crc;
//						buffer[BUFFER_SIZE-2] = crc;
//						buffer[BUFFER_SIZE-1] = crc>>8;
					}
					uint16_t p = 0;
					while (p < BUFFER_SIZE){
						boot_program_page(ptr+p, &buffer[p]);
						p += SPM_PAGESIZE;
					}
			}

			if (dataSource == 'U'){
				if (success)
					UartRead(0xFFFFFFF9, NULL, 0); //Installation Successful
				else
					UartRead(0xFFFFFFF8, NULL, 0); //Installation Failed
			}

		}while(0);
	}

	//erase the digital signature
	if (dataSource == 'F')
		FlashEraseBlock(flashOffset);

	FlashDeInit();
	SPIDeInit();
	UartDeInit();
}


int main(void)
{
	DDRE |= (1<<2);
	DDRG |= (1<<5);
	PORTG &= ~(1<<5);
    MCUSR = 0;
    wdt_disable();
	BootLoader();

	#ifndef RAMPZ
		uint16_t p = 0x000000;
	#else
		uint32_t p = 0x000000;
	#endif

	uint16_t crc = 0;

	do
	{
		#ifndef RAMPZ
			crc = CRC(crc, pgm_read_byte(p));
		#else
			crc = CRC(crc, pgm_read_byte_far(p));
		#endif
	}
	while (++p < firmwareSize);

	if (crc)
	{
		for(;;)
		{
			PORTE ^= (1<<2);
			_delay_ms(1000);
		}
	}
    asm volatile ("jmp 0");
}

