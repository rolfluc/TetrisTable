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

    #define CLOCKSPEED 48000000

    #define LED_LENGTH 300
    #define LED_COLOR_LENGTH 24
    #define TOTAL_BYTE_LENGTH LED_LENGTH * LED_COLOR_LENGTH
    #define HEIGHT_OF_BOARD 20
    #define LENGTH_OF_BOARD 10
    #define PORTB_BUFFER_LENGTH 10


    //Color GRB
    #define YELLOW  0x030300 //Square
    #define ORANGE  0x030f00 // __|
    #define BLUE    0x00000f // |__
    #define CYAN    0x030003 // ____
    #define RED     0x000f00 // -|_
    #define PURPLE  0x000303 // _|_
    #define GREEN   0x0f0000 // _|-
    #define WHITE   0x0f0f0f
    #define BLACK   0x000000

#ifdef	__cplusplus
}
#endif

#endif	/* DEFINITIONS_H */

