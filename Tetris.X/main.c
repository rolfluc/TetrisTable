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

void send_board(void)
{
    TRISD = 0x00;
    for (uint8_t index =0; index < TOTAL_BYTE_LENGTH; index++)
    {
        PORTB = 0xff;
        //wait 400ns
        PORTB = block_coding[index];
        //wait 400ns
        PORTB = 0x00;
        //wait 400ns, start again
    }
    //wait 50us
}
// measured in
void wait(uint16_t wait_time)
{
    T1CONbits.TMR1ON = 1;
    //use a timer interrupt for more accurate timing
}