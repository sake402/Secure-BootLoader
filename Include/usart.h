
#ifndef UART_H
#define UART_H

#include <stdint.h>

#ifndef UBRRL
#define UBRRL  UBRR0L
#define UBRRH  UBRR0H
#endif

#ifndef UCSRA
#define UCSRA  UCSR0A
#define UCSRB  UCSR0B
#define UDR    UDR0
#define UDRE   UDRE0
#define RXC    RXC0
#define RXEN   RXEN0
#define TXEN   TXEN0

#endif

#define BAUD 115200

#define UBR  (unsigned int)( F_CPU / (16.0 * BAUD) - 0.5 )

void UartInit();
void UartPutC(char data);
void UartDeInit(void);
uint8_t UartRead(uint32_t address, uint8_t* data, uint16_t dataLength);


#endif // BUS_H
