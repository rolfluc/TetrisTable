#include <p18f4550.h>
#include <stdio.h>
#include <stdlib.h>
#include "definitions.h"
#include "setupFunctions.h"
#include "mainFunctions.h"

#pragma config FOSC=ECPLLIO_EC, PLLDIV=12, CPUDIV=OSC1_PLL2, USBDIV=2, IESO=ON
#pragma config WDT=OFF, PWRT=ON, BOR=OFF
#pragma config LVP=OFF, MCLRE=ON, PBADEN=OFF, STVREN=ON
#pragma config FCMEN = ON


uint8_t block_coding[TOTAL_BYTE_LENGTH];


void setup(void)
{
    //Clear up/initialize the LED Block
    for (uint8_t index = 0; index < TOTAL_BYTE_LENGTH; index++)
    {
        block_coding[index] = 0;
    }
    //interr
    //clockSetup();
    //pinSetup();
}


/*
 *
 */
void main(void)
{
    setup();
    while(1)
    {
        send_board();

    }
}

    //0 bit: 0.40us HI, 0.80us LO
    //1 bit: 0.80us HI, 0.40us LO,
    //each timing is +/- 0.10us
    //res:  50us
    //1 cycle = 20.83333 ns
    //20 cycles is closest
//
//Send board sends the pre-made LED matrix array from PORTD
//
void send_board()
{
    INTCONbits.GIE = 0;
    TRISD = 0x00;
    for (uint8_t index =0; index < TOTAL_BYTE_LENGTH; index++) // 5 cycles (first is 10)
    {
        PORTD = 0xff;
//#if CLOCKSPEED > 10
        asm("nop");
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");

        PORTD = block_coding[index];
        asm("nop");
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");

        PORTD = 0x00;
        asm("nop");
        asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
    }
    uint16_t wait_time = 266;
    while (wait_time) wait_time--;
    INTCONbits.GIE = 1;
}