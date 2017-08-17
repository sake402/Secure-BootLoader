
#include <avr/io.h>
#include <util/delay.h>
#include <usart.h>
#include <crc.h>

void UartInit(void)
{
	UBRRL = UBR;
	UBRRH = (UBR >> 8);
	UCSRB = (1 << RXEN) | (1 << TXEN);
}

void UartDeInit(void){
	UBRRL = 0;
	UBRRH = 0;
	UCSRB = 0;
}

void UartPutC(char data){
	while (!(UCSRA & (1 << UDRE)));
	UDR = data;
}

int UartGetC(uint8_t timeOut100Us){
	while (!(UCSRA & (1 << RXC)) && timeOut100Us){
		_delay_us(100);
		if (timeOut100Us)
			timeOut100Us--;
	}
	if (timeOut100Us == 0)
		return -1;
	return UDR;
}

uint8_t UartRead(uint32_t address, uint8_t* data, uint16_t dataLength){
	uint8_t retry = 8;
	uint8_t loop = 0;
	while(retry--){
		//pop data
		if (loop){
			while(UartGetC(10) >= 0);
		}
		loop++;
		UartPutC('<');
		UartPutC('r');
		uint16_t crc = 0;
		UartPutC(address);
		crc = CRC(crc, (uint8_t)address);
		UartPutC(address>>8);
		crc = CRC(crc, (uint8_t)(address>>8));
		UartPutC(address>>16);
		crc = CRC(crc, (uint8_t)(address>>16));
		UartPutC(address>>24);
		crc = CRC(crc, (uint8_t)(address>>24));
		UartPutC(dataLength);
		crc = CRC(crc, (uint8_t)(dataLength));
		UartPutC(dataLength>>8);
		crc = CRC(crc, (uint8_t)(dataLength>>8));
		UartPutC(dataLength>>16);
		crc = CRC(crc, (uint8_t)(dataLength>>16));
		UartPutC(dataLength>>24);
		crc = CRC(crc, (uint8_t)(dataLength>>24));
		UartPutC('\0');
		crc = CRC(crc, 0);
		UartPutC('\0');
		crc = CRC(crc, 0);
		UartPutC('\0');
		crc = CRC(crc, 0);
		UartPutC(crc);
		UartPutC(crc>>8);
		UartPutC('>');
		int d = UartGetC(255);
		if (d < 0)
			continue;
		if (d == 1){
			UartGetC(2);
			UartGetC(2);
			continue;
		}else if (d == 0){
			crc = CRC(0, 0);
			uint8_t* dd = data;
			uint16_t dl = dataLength;
			while(dl--){
				 d = UartGetC(2);
				if (d < 0)
					break;
				*dd = d;
				crc = CRC(crc, d);
				dd++;
			}
			if (d < 0)
				continue;
			uint16_t ccrc = UartGetC(2);
			ccrc |= ((uint16_t)UartGetC(2)) << 8;
			if (crc == ccrc)
				return 1;
		}
	}
	return 0;
}
