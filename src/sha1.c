/*********************************************************************
* Filename:   sha1.c
* Author:     Brad Conte (brad AT bradconte.com)
* Copyright:
* Disclaimer: This code is presented "as is" without any guarantees.
* Details:    Implementation of the SHA1 hashing algorithm.
              Algorithm specification can be found here:
               * http://csrc.nist.gov/publications/fips/fips180-2/fips180-2withchangenotice.pdf
              This implementation uses little endian byte order.
*********************************************************************/

/*************************** HEADER FILES ***************************/
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
//#include <memory.h>
#include "sha1.h"

/****************************** MACROS ******************************/
#if 1
#define ROTLEFT(a, b) ((a << b) | (a >> (32 - b)))
#define ROTLEFT5(a) ROTLEFT(a, 5)
#define ROTLEFT30(a) ROTLEFT(a, 30)
#else
WORD ROTLEFT5(WORD a){
	return ((a << 5) | (a >> (32 - 5)));
}

WORD ROTLEFT30(WORD a){
	return ((a << 30) | (a >> (32 - 30)));
}
#endif

void sha1_helper(WORD abcde[5], WORD t){
#define a abcde[0]
#define b abcde[1]
#define c abcde[2]
#define d abcde[3]
#define e abcde[4]
	e = d;
	d = c;
	c = ROTLEFT(b, 30);
	b = a;
	a = t;
#undef a
#undef b
#undef c
#undef d
#undef e
}

/*********************** FUNCTION DEFINITIONS ***********************/
void sha1_transform(SHA1_CTX *ctx, const BYTE data[])
{
	BYTE i, j;
	WORD abcde[5];
	WORD /*a, b, c, d, e, *//*i, j,*/ t, m[80];
#define a abcde[0]
#define b abcde[1]
#define c abcde[2]
#define d abcde[3]
#define e abcde[4]

	for (i = 0, j = 0; i < 16; ++i, j += 4){
#if 1
		WORD mm;// = 0;
		for (uint8_t jj = 0; jj < 4; jj++){
			mm<<=8;
			mm|=data[j+jj];
		}
		m[i] = mm;
#else
		m[i] = (((unsigned long)data[j]) << 24) + (((unsigned long)data[j + 1]) << 16) + (((unsigned long)data[j + 2]) << 8) + (data[j + 3]);
#endif
	}
//		uint8_t sub[4] = {3, 8, 14, 16};
	for ( ; i < 80; ++i) {
#if 0
		WORD mm = 0;
		for (uint8_t ii = 0; ii < 4; ii++){
			mm ^= m[i-sub[ii]];
		}
		m[i] = (mm << 1) | (mm >> 31);
#else
		m[i] = (m[i - 3] ^ m[i - 8] ^ m[i - 14] ^ m[i - 16]);
		m[i] = (m[i] << 1) | (m[i] >> 31);
#endif
	}

#if 1
	memcpy(abcde, ctx->state, sizeof(abcde));
#else
	a = ctx->state[0];
	b = ctx->state[1];
	c = ctx->state[2];
	d = ctx->state[3];
	e = ctx->state[4];
#endif
	for (i = 0; i < 80; i++){
//		BYTE ii;
		if (i < 20){
//			ii = 0;
			t = ((b & c) ^ (~b & d));
		}else if ( i < 40){
//			ii = 1;
			t = (b ^ c ^ d);
		}else if (i < 60){
//			ii = 2;
			t = ((b & c) ^ (b & d) ^ (c & d));
		}else{
//			ii = 3;
			t = (b ^ c ^ d);
		}
		t += ROTLEFT(a, 5) + e + ctx->k[i/20] + m[i];
//		e = d;
//		d = c;
//		c = ROTLEFT(b, 30);
//		b = a;
//		a = t;
		sha1_helper(abcde, t);
	}

//	for (i = 0; i < 20; ++i) {
//		t = ROTLEFT5(a)/*, 5)*/ + ((b & c) ^ (~b & d)) + e + ctx->k[0] + m[i];
//		sha1_helper(abcde, t);
////		e = d;
////		d = c;
////		c = ROTLEFT(b, 30);
////		b = a;
////		a = t;
//	}
//	for ( ; i < 40; ++i) {
//		t = ROTLEFT5(a)/*, 5)*/ + (b ^ c ^ d) + e + ctx->k[1] + m[i];
//		sha1_helper(abcde, t);
////		e = d;
////		d = c;
////		c = ROTLEFT(b, 30);
////		b = a;
////		a = t;
//	}
//	for ( ; i < 60; ++i) {
//		t = ROTLEFT5(a)/*, 5)*/ + ((b & c) ^ (b & d) ^ (c & d))  + e + ctx->k[2] + m[i];
//		sha1_helper(abcde, t);
////		e = d;
////		d = c;
////		c = ROTLEFT(b, 30);
////		b = a;
////		a = t;
//	}
//	for ( ; i < 80; ++i) {
//		t = ROTLEFT5(a)/*, 5)*/ + (b ^ c ^ d) + e + ctx->k[3] + m[i];
//		sha1_helper(abcde, t);
////		e = d;
////		d = c;
////		c = ROTLEFT(b, 30);
////		b = a;
////		a = t;
//	}

	for (i = 0; i < 5; i++)
		ctx->state[i] += abcde[i];
//	ctx->state[0] += a;
//	ctx->state[1] += b;
//	ctx->state[2] += c;
//	ctx->state[3] += d;
//	ctx->state[4] += e;
}

void sha1_init(SHA1_CTX *ctx)
{
	ctx->datalen = 0;
	ctx->bitlen = 0;

#if 1
	const uint32_t stk[] = {
			0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476, 0xc3d2e1f0, //states
			0x5a827999, 0x6ed9eba1, 0x8f1bbcdc, 0xca62c1d6 //k
	};
	memcpy(ctx->state, stk, sizeof(stk));
#else
	ctx->state[0] = 0x67452301;
	ctx->state[1] = 0xEFCDAB89;
	ctx->state[2] = 0x98BADCFE;
	ctx->state[3] = 0x10325476;
	ctx->state[4] = 0xc3d2e1f0;
	ctx->k[0] = 0x5a827999;
	ctx->k[1] = 0x6ed9eba1;
	ctx->k[2] = 0x8f1bbcdc;
	ctx->k[3] = 0xca62c1d6;
#endif
}

void sha1_update(SHA1_CTX *ctx, const BYTE data[], size_t len)
{
	size_t i;
	for (i = 0; i < len; ++i) {
		ctx->data[ctx->datalen] = data[i];
		ctx->datalen++;
		if (ctx->datalen == 64) {
			sha1_transform(ctx, ctx->data);
			ctx->bitlen += 512;
			ctx->datalen = 0;
		}
	}
}

void sha_pad(SHA1_CTX *ctx, uint8_t len){
	BYTE i;
	i = ctx->datalen;
	ctx->data[i++] = 0x80;
	while (i < len)
		ctx->data[i++] = 0x00;
}

void sha1_final(SHA1_CTX *ctx, BYTE hash[])
{
	BYTE i;

	i = ctx->datalen;

	// Pad whatever data is left in the buffer.
	if (ctx->datalen < 56) {
//		sha_pad(ctx, 56);
		ctx->data[i++] = 0x80;
		while (i < 56)
			ctx->data[i++] = 0x00;
	}
	else {
//		sha_pad(ctx, 64);
		ctx->data[i++] = 0x80;
		while (i < 64)
			ctx->data[i++] = 0x00;
		sha1_transform(ctx, ctx->data);
		memset(ctx->data, 0, 56);
	}

	// Append to the padding the total message's length in bits and transform.
//	ctx->bitlen += ctx->datalen * 8;
	unsigned /*long*/ long btl = ctx->bitlen + ctx->datalen * 8;
	for (BYTE ii = 0; ii < 8; ii++){
		ctx->data[63-ii] = btl;//ctx->bitlen;//>>(8*ii);
		btl>>=8;
	}
//	ctx->data[63] = ctx->bitlen;
//	ctx->data[62] = ctx->bitlen >> 8;
//	ctx->data[61] = ctx->bitlen >> 16;
//	ctx->data[60] = ctx->bitlen >> 24;
//	ctx->data[59] = ctx->bitlen >> 32;
//	ctx->data[58] = ctx->bitlen >> 40;
//	ctx->data[57] = ctx->bitlen >> 48;
//	ctx->data[56] = ctx->bitlen >> 56;
	sha1_transform(ctx, ctx->data);

	// Since this implementation uses little endian byte ordering and MD uses big endian,
	// reverse all the bytes when copying the final state to the output hash.
	for (i = 0; i < 4; ++i) {
		uint8_t shr = 24 - i * 8;
		for (BYTE ii = 0; ii < 5; ii++){
//			hash[i+4*ii] = (ctx->state[ii] >> (24 - i * 8)) & 0x000000ff;
			hash[i+4*ii] = (ctx->state[ii] >> shr);// & 0x000000ff;
		}
//		hash[i]      = (ctx->state[0] >> (24 - i * 8)) & 0x000000ff;
//		hash[i + 4]  = (ctx->state[1] >> (24 - i * 8)) & 0x000000ff;
//		hash[i + 8]  = (ctx->state[2] >> (24 - i * 8)) & 0x000000ff;
//		hash[i + 12] = (ctx->state[3] >> (24 - i * 8)) & 0x000000ff;
//		hash[i + 16] = (ctx->state[4] >> (24 - i * 8)) & 0x000000ff;
	}
}
