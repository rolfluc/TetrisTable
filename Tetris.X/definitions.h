#ifndef DEFINITIONS_H
#define	DEFINITIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

    #define uint8_t unsigned char
    #define uint16_t unsigned short int
    #define uint32_t unsigned int
    #define uint64_t unsigned long int

    #define int8_t char
    #define int16_t short int
    #define int32_t int
    #define int64_t long int

    #define clockSpeed 48000000

    #define LED_LENGTH 5
    #define LED_COLOR_LENGTH 24
    #define TOTAL_BYTE_LENGTH LED_LENGTH * LED_COLOR_LENGTH



#ifdef	__cplusplus
}
#endif

#endif	/* DEFINITIONS_H */

