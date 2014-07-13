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
uint8_t current_height[HEIGHT_OF_BOARD];

void interrupt high_interrupt(void)
{
    if (PIR1bits.TMR1IF == 1)
    {
        PIR1bits.TMR1IF = 0;
    }
    if (PIR1bits.TMR2IF == 1)
    {
        PIR1bits.TMR2IF = 0;
    }
}


void interrupt low_priority low_interrupt(void)
{
    if (INTCONbits.RBIF == 1)
    {
        INTCONbits.RBIF = 0;
        uint8_t b_value = PORTB;
    }
    if (INTCONbits.INT0IF == 1)
    {
        INTCONbits.INT0IF = 0;
    }
}



void setup(void)
{
    //Clear up/initialize the LED Block
    for (uint8_t index = 0; index < TOTAL_BYTE_LENGTH; index++)
    {
        block_coding[index] = 0;
    }
    for (uint8_t index = 0; index < TOTAL_BYTE_LENGTH; index++)
    {
        current_height[index] = 0;
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
    //1 cycle = 20.83333 ns
    //20 cycles is closest
//
//Send board sends the pre-made LED matrix array from PORTD
//
void send_board()
{
    disableInterrupts();
    TRISD = 0x00;
    for (uint8_t index =0; index < TOTAL_BYTE_LENGTH; index++) // 5 cycles (first is 10)
    {
        PORTD = 0xff;
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
    enableInterrupts();
}