/*-----------------------------------------------------------------------/
/  PFF - Generic low level disk control module            (C)ChaN, 2010
/------------------------------------------------------------------------/
/
/  Copyright (C) 2010, ChaN, all right reserved.
/
/ * This software is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/------------------------------------------------------------------------/
/ * Dec 6, 2010  First release
*/

//#include "pff.h"
#include <avr/io.h>
#include <util/delay.h>
#include "diskio.h"
#include "spi.h"

#define deselect() /*(void)*/ { \
	PORTJ |= (1<<7); \
	SPIXfer(0xFF); \
}

#define select() /*(void)*/{		\
	PORTJ &= ~(1<<7); \
}

#define dly_100us() /*(void)*/{ \
	_delay_us(100); \
}

/*--------------------------------------------------------------------------

   Module Private Functions

---------------------------------------------------------------------------*/

/* Definitions for MMC/SDC command */
#define CMD0	(0x40+0)	/* GO_IDLE_STATE */
#define CMD1	(0x40+1)	/* SEND_OP_COND (MMC) */
#define	ACMD41	(0xC0+41)	/* SEND_OP_COND (SDC) */
#define CMD8	(0x40+8)	/* SEND_IF_COND */
#define CMD16	(0x40+16)	/* SET_BLOCKLEN */
#define CMD17	(0x40+17)	/* READ_SINGLE_BLOCK */
#define CMD24	(0x40+24)	/* WRITE_BLOCK */
#define CMD55	(0x40+55)	/* APP_CMD */
#define CMD58	(0x40+58)	/* READ_OCR */


/* Card type flags (CardType) */
#define CT_MMC				0x01	/* MMC ver 3 */
#define CT_SD1				0x02	/* SD ver 1 */
#define CT_SD2				0x04	/* SD ver 2 */
#define CT_BLOCK			0x08	/* Block addressing */

BYTE CardType;

/*-----------------------------------------------------------------------*/
/* Send a command packet to MMC                                          */
/*-----------------------------------------------------------------------*/

static
BYTE send_cmd (
    BYTE cmd,		/* 1st byte (Start + Index) */
    DWORD arg		/* Argument (32 bits) */
)
{
    BYTE n, res;


    if (cmd & 0x80) {	/* ACMD<n> is the command sequense of CMD55-CMD<n> */
        cmd &= 0x7F;
        res = send_cmd(CMD55, 0);
        if (res > 1) return res;
    }

    /* Select the card */
    select();

    /* Send a command packet */
    SPIXfer(cmd);						/* Start + Command index */
    SPIXfer((BYTE)(arg >> 24));		/* Argument[31..24] */
    SPIXfer((BYTE)(arg >> 16));		/* Argument[23..16] */
    SPIXfer((BYTE)(arg >> 8));			/* Argument[15..8] */
    SPIXfer((BYTE)arg);				/* Argument[7..0] */
    n = 0x01;							/* Dummy CRC + Stop */
    if (cmd == CMD0) n = 0x95;			/* Valid CRC for CMD0(0) */
    if (cmd == CMD8) n = 0x87;			/* Valid CRC for CMD8(0x1AA) */
    SPIXfer(n);

    /* Receive a command response */
    n = 10;								/* Wait for a valid response in timeout of 10 attempts */
    do {
        res = SPIXfer(0xFF);
    } while ((res & 0x80) && --n);

    return res;			/* Return with the response value */
}


/*--------------------------------------------------------------------------

   Public Functions

---------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (void)
{
    BYTE n, cmd, ty, ocr[4];
    UINT tmr;


    SPIInit();							/* Initialize ports to control MMC */
	DDRJ |= (1<<7);
    for (n = 100; n; n--) dly_100us();	/* 10ms delay */
    for (n = 10; n; n--)
    	deselect();	/* 80 Dummy clocks with CS=H */

    ty = 0;
    if (send_cmd(CMD0, 0) == 1) {			/* Enter Idle state */
        if (send_cmd(CMD8, 0x1AA) == 1) {	/* SDv2 */
            for (n = 0; n < 4; n++) ocr[n] = SPIXfer(0xFF);		/* Get trailing return value of R7 resp */
            if (ocr[2] == 0x01 && ocr[3] == 0xAA) {			/* The card can work at vdd range of 2.7-3.6V */
                for (tmr = 10000; tmr && send_cmd(ACMD41, 1UL << 30); tmr--) dly_100us();	/* Wait for leaving idle state (ACMD41 with HCS bit) */
                if (tmr && send_cmd(CMD58, 0) == 0) {		/* Check CCS bit in the OCR */
                    for (n = 0; n < 4; n++) ocr[n] = SPIXfer(0xFF);
                    ty = (ocr[0] & 0x40) ? CT_SD2 | CT_BLOCK : CT_SD2;	/* SDv2 (HC or SC) */
                }
            }
        } else {							/* SDv1 or MMCv3 */
            if (send_cmd(ACMD41, 0) <= 1) 	{
                ty = CT_SD1; cmd = ACMD41;	/* SDv1 */
            } else {
                ty = CT_MMC; cmd = CMD1;	/* MMCv3 */
            }
            for (tmr = 10000; tmr && send_cmd(cmd, 0); tmr--) dly_100us();	/* Wait for leaving idle state */
            if (!tmr || send_cmd(CMD16, 512) != 0)			/* Set R/W block length to 512 */
                ty = 0;
        }
    }
    CardType = ty;
    deselect();

    return ty ? 0 : STA_NOINIT;
}

/*-----------------------------------------------------------------------*/
/* Read partial sector                                                   */
/*-----------------------------------------------------------------------*/

DRESULT disk_readp (
    BYTE *buff,		/* Pointer to the read buffer (NULL:Read bytes are forwarded to the stream) */
    DWORD lba,		/* Sector number (LBA) */
    UINT ofs,		/* Byte offset to read from (0..511) */
    UINT cnt		/* Number of bytes to read (ofs + cnt mus be <= 512) */
)
{
    DRESULT res;
    BYTE rc;
    WORD bc;


    if (!(CardType & CT_BLOCK)) lba *= 512;		/* Convert to byte address if needed */

    res = RES_ERROR;
    if (send_cmd(CMD17, lba) == 0) {		/* READ_SINGLE_BLOCK */

        bc = 40000;
        do {							/* Wait for data packet */
            rc = SPIXfer(0xFF);
        } while (rc == 0xFF && --bc);

        if (rc == 0xFE) {				/* A data packet arrived */
            bc = 514 - ofs - cnt;

            /* Skip leading bytes */
            if (ofs) {
                do SPIXfer(0xFF); while (--ofs);
            }

            /* Receive a part of the sector */
            do {
                *buff++ = SPIXfer(0xFF);
            } while (--cnt);

            /* Skip trailing bytes and CRC */
            do SPIXfer(0xFF); while (--bc);

            res = RES_OK;
        }
    }

    deselect();

    return res;
}


